require 'rails_helper'

describe Coffee do
  it { should validate_presence_of :blend_name }
  it { should validate_presence_of :origin }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :variety }
  it { should validate_presence_of :notes }

  it { should have_many :reviews }

  # ignore_interference_by_writer referenced when I did a google search for fix to validation errors I keep getting when I RSPEC.

  describe '.alphabetical' do
    it "returns coffee blends by blend name" do
      coffeeA = Coffee.create(
        blend_name: "Summer Solstice",
        origin: "Antigua, Guatemala",
        cost: 12.39,
        variety: "Pacas",
        notes: "balanced, silky, marzipan, orange-creamsicle, bergamot"
      )
      coffeeB = Coffee.create(
        blend_name: "Bog Standard",
        origin: "New Jersey, USA",
        cost: 5.39,
        variety: "Repulsive",
        notes: "balanced combination of watery and sharp, drink hot to avoid the taste"
      )
      coffeeC = Coffee.create(
        blend_name: "Seattle Standard",
        origin: "Washington, USA",
        cost: 15.39,
        variety: "Starbucks",
        notes: "cocoa, nutty, smooth, unremarkable, does the job"
      )
      expect(Coffee.alphabetical).to eq([coffeeB, coffeeC, coffeeA])
    end
  end

  describe '#rating' do
    it "returns average rating based on all reviews" do
      coffeeA = Coffee.create(
        blend_name: "Summer Solstice",
        origin: "Antigua, Guatemala",
        cost: 12.39,
        variety: "Pacas",
        notes: "balanced, silky, marzipan, orange-creamsicle, bergamot"
      )
      review1 = Review.create(
        coffee_id: coffeeA.id,
        content: "Rutabega",
        user: "Dude1",
        rating: 2
      )
      review2 = Review.create(
        coffee_id: coffeeA.id,
        content: "Green grocer",
        user: "Dude2",
        rating: 5
      )
      expect(coffeeA.rating).to eq(3.5)
    end
  end

end
