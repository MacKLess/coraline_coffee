require "rails_helper"

describe "the add a review process" do
  it "adds a new review" do
    product = Product.create(blend_name: "Summer Solstice", origin: "Antigua, Guatemala", cost: 12.39, variety: "Pacas", notes: "balanced, silky, marzipan, orange-creamsicle, bergamot")
    visit products_path
    click_link "write a review."
    fill_in "Rating", :with => "3"
    fill_in "Content", :with => "It does the job, but nothing I'd go out of my way for."
    click_on "Create Review"
    expect(page).to have_content('Review made!')
    expect(page).to have_content('3')
  end
end

describe "the edit a review process" do
  it "allows user to edit a review" do
    product = Product.create(blend_name: "Summer Solstice", origin: "Antigua, Guatemala", cost: 12.39, variety: "Pacas", notes: "balanced, silky, marzipan, orange-creamsicle, bergamot")
    review = Review.create(rating: 3, content: "It does the job, but nothing I'd go out of my way for.")
    visit product_path(review)
    click_on "Edit"
    fill_in "Content", :with => "Not bad"
    click_on "Update Review"
    expect(page).to have_content "Not bad"
  end
end

describe "the delete a review process" do
  it "allows user to delete a review" do
    product = Product.create(blend_name: "Summer Solstice", origin: "Antigua, Guatemala", cost: 12.39, variety: "Pacas", notes: "balanced, silky, marzipan, orange-creamsicle, bergamot")
    review = Review.create(rating: 3, content: "It does the job, but nothing I'd go out of my way for.")
    visit product_path(product)
    click_link "Delete"
    visit products_path
    expect(page).to have_no_content("Test")
  end
end
