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
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Super flat in Croix Rousse',
  address: '23 rue Dumenge',
  description: 'A lovely and cosy 3 rooms flat',
  price_per_night: 200,
  number_of_guests: 2
)

Flat.create!(
  name: 'Dark studio in Italy',
  address: '10 rue de Roma',
  description: 'A disgusting smelly pizza flat',
  price_per_night: 1000,
  number_of_guests: 500
)

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
puts "Finished!"
