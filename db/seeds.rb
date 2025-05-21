# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database..."
Restaurant.destroy_all

nandos = { name: "Nando's", address: "10 Chicken Street", phone_number: "0123712389", category: "french" }
pizza_hut = { name: "Pizza Hut", address: "11 Pizza Street", phone_number: "6234986848", category: "italian" }
yo_sushi = { name: "Yo Sushi", address: "12 Sushi Street", phone_number: "9328476588", category: "japanese" }
uncle_wrinkle = { name: "Uncle Wrinkle", address: "13 Chinese Street", phone_number: "1384746783", category: "chinese" }
waffles = { name: "Wafflemeister", address: "14 Waffle Street", phone_number: "0987234564", category: "belgian" }


puts "creating restaurants..."

[nandos, pizza_hut, yo_sushi, uncle_wrinkle, waffles].each do |restaurant|
  puts "creating #{restaurant}"
  Restaurant.create!(restaurant)
end

puts "Finished, created #{Restaurant.count} restaurants."
