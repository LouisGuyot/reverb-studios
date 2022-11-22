# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
    photo: "https://images.unsplash.com/photo-1531331432998-4002cbf3b28c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio

  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "13 KN 27 St, Kigali, Rwanda",
    photo: "https://images.unsplash.com/photo-1621618806270-9e490bd9abe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2332&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "1 Galton Rd, Tijgerhof, Cape Town, 7441, Afrique du Sud",
    photo: "https://images.unsplash.com/photo-1621619054919-167f2fcf135c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2332&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "Stationsweg 182a, 2515 BS Den Haag, Pays-Bas",
    photo: "https://images.unsplash.com/photo-1559732277-7453b141e3a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "Rue des Coteaux 160, 1030 Schaerbeek, Belgique",
    photo: "https://images.unsplash.com/photo-1514320291840-2e0a9bf2a9ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "Zossener Str. 46, 10961 Berlin, Allemagne",
    photo: "https://images.unsplash.com/photo-1589154904762-c258f3497b6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80 "
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "R. Ferreira Borges 101, 1350-128 Lisboa, Portugal",
    photo: "https://images.unsplash.com/photo-1576060974974-933acee13b58?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2369&q=80
    "
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "81 West Rd, Kingston, Jamaïque",
    photo: "https://images.unsplash.com/photo-1581378576936-9b10bb143de8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "Carrer de Zamora, 78, 08018 Barcelona, Espagne",
    photo: "https://images.unsplash.com/photo-1535712534465-8ac1112ed593?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2369&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "4 Rue de la Pierre Levée, 75011 Paris, France",
    photo: "https://images.unsplash.com/photo-1627773755683-dfcf2774596a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2352&q=80"
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "158 Great Suffolk St, London SE1 1PE, Royaume-Uni",
    photo: "https://images.unsplash.com/photo-1542464497-e217d476a9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2360&q=80
    "
  )
  studio.user = louis
  studio.save!

  sleep 2
  puts studio


  studio = Studio.new(
    name: "#{Faker::Emotion.adjective} #{Faker::ElectricalComponents.active}",
    price: "#{rand(1...1000)}#{Faker::Currency.symbol}",
    description: Faker::Books::Lovecraft.paragraph(
      sentence_count: 6,
      random_sentences_to_add: 3,

    ).to_s,
    address: "Shlomo HaMelekh St 1, Tel Aviv-Yafo, Israël",
    photo: "https://images.unsplash.com/photo-1542973714-987e6faf64e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2374&q=80
    "
  )
  studio.user = louis
  studio.save!



puts 'Finished!'
