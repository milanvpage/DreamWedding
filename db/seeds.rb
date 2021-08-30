# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

o = State.find_or_create_by(name: "Oregon")
c = State.find_or_create_by(name: "California")
i = State.find_or_create_by(name: "Idaho")
a = State.find_or_create_by(name: "Arizona")



v1 = Venue.find_or_create_by(name:"Summer Heights", address: "5678 Ocean drive Sacremento", price: 16000, state: c)

v2 = Venue.find_or_create_by(name:"Forest Valley Venue", address: "5678 OakTree Lane Portland", price: 10000, state: o)

v3 = Venue.find_or_create_by(name:"Hill Top Resort", address: "5678 Rose Street Portland", price: 18000, state: o)
u1 = User.find_or_create_by(business_name: "MVP", email: "mvpage@gmail.com", password_digest: "1234")

u2 = User.find_or_create_by(business_name: "PMP", email: "paxxxpage@gmail.com", password_digest: "Bubbyone1!")


Wedding.find_or_create_by(title: "Summer Wedding", entertainment: "Jack Johnson", color_scheme: "lavender", flowers: "White Roses", venue: v1)
