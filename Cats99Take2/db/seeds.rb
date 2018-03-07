# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
99.times {Cat.create(color: Faker::Color.color_name, birth_date: Faker::Date.forward(100000), name: Faker::Science.element + " " + Faker::Dog.breed, sex: ["M", "F"].sample, description: Faker::StarWars.wookiee_sentence)}
