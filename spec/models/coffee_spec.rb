require 'rails_helper'

describe Coffee do
  it { should validate_presence_of :blend_name }
  it { should validate_presence_of :origin }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :variety }
  it { should validate_presence_of :notes }

  # it { should have_many :reviews }

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

end
