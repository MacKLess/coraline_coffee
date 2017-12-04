require "rails_helper"

describe "the add a coffee process" do
  it "adds a new coffee" do
    visit products_path
    click_link "Add a Coffee"
    fill_in "Blend Name", :with => "Total Drek"
    fill_in "Origin", :with => "Antigua, Guatemala"
    fill_in "Cost", :with => 12.39
    fill_in "Variety", :with => "Pacas"
    fill_in "Notes", :with => "balanced, silky, marzipan, orange-creamsicle, bergamot"
    click_on "Create Coffee"
    expect(page).to have_content("Coffee created!")
    expect(page).to have_content("Total Drek")
  end
end

describe "the edit a coffee process" do
  it "allows user to edit a coffee" do
    product = Product.create(blend_name: "Test", origin: "Testland, WA", cost: 15.55, variety: "ditch water", notes: "not fit for consumption")
    visit products_path
    click_on "Test"
    fill_in "Origin", :with => "North Dakota, United States"
    click_button "Update Coffee"
    expect(page).to have_content "North Dakota, United States"
  end
end

describe "the delete a coffee process" do
  it "allows user to delete a coffee" do
    product = Product.create(blend_name: "Test", origin: "Testland, WA", cost: 15.55, variety: "ditch water", notes: "not fit for consumption")
    visit product_path(product)
    click_link "Delete"
    visit products_path
    expect(page).to have_no_content("Test")
  end
end
