# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# do we need to require faker?
require 'faker'

puts "Cleaning database"
Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]
random_num = rand(1..5)

puts "Creating restaurant database"
5.times do
  @restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: categories[random_num])
  @restaurant.save
end
