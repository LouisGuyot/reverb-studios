# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.destroy_all
Studio.destroy_all

puts 'Creating 30 fake users'

louis = User.new(
    name: "Louis",
    email: "Louis@mail.com",
    password: "Password"
  )
  louis.save!

puts 'Creating 30 fake Studios...'

30.times do
  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    photo: Faker::LoremFlickr.image,
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3
    ).to_s
  )
  studio.user = louis
  studio.save!
end
puts 'Finished!'
