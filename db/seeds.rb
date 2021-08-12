# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


v1 = Venue.find_or_create_by(name:"Summer Heights", address: "5678 Ocean drive Sacremento, California", price: 16000)

v2 = Venue.find_or_create_by(name:"Forest Valley Venue", address: "5678 OakTree Lane Portland, Oregon", price: 10000)

v3 = Venue.find_or_create_by(name:"Hill Top Resort", address: "5678 Rose Street Portland, Oregon", price: 18000)

w1 = Wedding.find_or_create_by(title: "Summer Wedding", entertainment: "Jack Johnson", color_scheme: "lavender", flowers: "White Roses", venue: v1)

