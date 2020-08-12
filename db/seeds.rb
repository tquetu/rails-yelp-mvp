# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
sogood    = { name: "So Good", address: "7 Boundary St, London E2 7JE", phone_number: "06 44 00 33 00", category: "chinese" }
la_famille = { name: "La famille", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06 44 00 33 00", category: "italian" }
bagel_corner = { name: "Bagel Corner", address: "3 rue de l'Euratech, Lille", phone_number: "06 44 00 33 00", category: "french" }
flunch = { name: "Flunch Centre", address: "3 rue de la gare, Lille", phone_number: "06 44 00 33 00", category: "belgian" }
el_italiano = { name: "El italiano", address: "45 place du poisson, Lille", phone_number: "06 44 00 33 00", category: "italian" }

[ sogood, la_famille, bagel_corner, el_italiano ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
