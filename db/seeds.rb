# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Wedding.create([ 
    #{title:"Wedding in the Rain", entertainment:"Jack Johnson", color_scheme:"faded Green and burnt Orange"},
    #{title:"Wedding in the Sun", entertainment: "Jason Mraz", color_scheme: "Lavender" },
    #{c}
    #])

#Venue.find_or_create_by(name:"Summer Heights", location: "5678 Ocean drive Sacremento, California")

w = Wedding.create(title:"Wedding in the Rain", entertainment:"Jack Johnson", color_scheme:"faded Green and burnt Orange")
w2 = Wedding.create(title:"Wedding in the Sun", entertainment: "Jason Mraz", color_scheme: "Lavender")
