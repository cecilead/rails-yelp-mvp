# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'PAPAPASTA',
    address: 'NANTES',
    phone_number: '06 07 08 09 01',
    category: 'italian'
  },
  {
    name: 'steak frites',
    address: 'rennes',
    phone_number: '06 07 08 09 02',
    category: 'french'
  },
  {
    name: 'whitefields',
    address: 'cesson',
    phone_number: '06 35 98 54 78',
    category: 'chinese'
  },
  {
    name: 'pizza',
    address: 'paris',
    phone_number: '02 96 87 45 25',
    category: 'italian'
  },
  {
    name: 'sushi',
    address: 'london',
    phone_number: '02 96 87 45 25',
    category: 'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
