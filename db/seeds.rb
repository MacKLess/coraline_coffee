# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all
User.destroy_all

products = []

25.times do
  blend_name = Faker::Coffee.unique.blend_name
  origin = Faker::Coffee.unique.origin
  cost = 25.99
  variety = Faker::Coffee.unique.variety
  notes = Faker::Coffee.unique.notes
  products.push(Product.create!(blend_name: blend_name,
                                origin: origin,
                                cost: cost,
                                variety: variety,
                                notes: notes))
end
