# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

categories = %w(chinese italian japanese french belgian)
ratings = (0..5).to_a

20.times do
  restaurant = Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address + " " + Faker::Address.city,
    category: categories.sample,
    phone_number: Faker::PhoneNumber.phone_number
    )

  5.times do
    Review.create(
    restaurant: restaurant,
    content: Faker::Lorem.paragraph(5),
    rating: ratings.sample
      )
  end


end
