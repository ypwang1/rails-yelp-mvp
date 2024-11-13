# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"french")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category:"italian")
puts "Created Pizza East"
Restaurant.create!(name: "Mi-ami", address: "Jan van Galenstraat 169, 1056 BR Amsterdam", category:"belgian")
puts "Mi-ami"
Restaurant.create!(name: "Restaurant Olijfje", address: "Valkenburgerstraat 223D, 1011 MJ Amsterdam", category:"japanese")
puts "Restaurant Olijfje"
Restaurant.create!(name: "Portugalia Tasca", address: "Bakkersstraat 12, 1017 CW Amsterdam", category:"chinese")
puts "Portugalia Tasca"

puts "Finished! Created #{Restaurant.count} restaurants."
