# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require 'faker'

Studio.destroy_all
User.destroy_all

puts 'Create test user'

louis = User.new(
    name: "Louis",
    email: "Louis@mail.com",
    password: "Password"
  )
  louis.save!

puts 'Creating 12 fake studios'


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "Villa Juana, Saint-Domingue, République dominicaine",
  )

  file = URI.open("https://images.unsplash.com/photo-1531331432998-4002cbf3b28c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
  studio.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    studio.user = louis
  studio.save!



puts 'All good!'
