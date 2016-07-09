# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.delete_all

Artist.create(name: "Rihanna", albums: 6, hometown: "Barbados")
Artist.create(name: "Taylor Swift", albums: 8, hometown: "Nashville")
Artist.create(name: "Billy Joel", albums: 14, hometown: "Long Island")
Artist.create(name: "Drake", albums: 4, hometown: "Toronto")
Artist.create(name: "Beyonce", albums: 6, hometown: "Houston")
