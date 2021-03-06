# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Miguel", username: "miguel", password: "password", role: "admin", address: "1234 Rails St")


10.times do
  category = Category.create(title: Faker::Company.unique.name)
  2.times do
    category.items.create(title: Faker::DragonBall.unique.character , description: "Kinda gross", price: 100.55)
    category.items.create(title: Faker::FamilyGuy.unique.character, description: "Kinda gross", price: 5.35)
    category.items.create(title: Faker::Pokemon.unique.name, description: "Kinda gross", price: 10.15)
    category.items.create(title: Faker::GameOfThrones.unique.character, description: "Kinda gross", price: 24.45)
    category.items.create(title: Faker::LeagueOfLegends.unique.champion, description: "Kinda gross", price: 3.35)
    category.items.create(title: Faker::Superhero.unique.name, description: "Kinda gross", price: 50.75)
  end
end
