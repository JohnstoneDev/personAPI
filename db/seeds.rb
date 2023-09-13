# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing Database!"

User.destroy_all

puts "Creating Users"

din = User.create!(username: "Din Djarin", email: "dindjarin@gmail.com")
luke = User.create!(username: "Luke Skywalker", email: "skywalkerl@yahoo.com")
anakin = User.create!(username: "Darth Vader", email: "vader@deathstar.com")
palpatine = User.create!(username: "Papa Palpatine", email: "emperor@deathstar.com")

puts "Seeding Data Done!"