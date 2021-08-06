# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wedding.create([ 
    {title:"Fall Glow", entertainment:"Jack Johnson" color_scheme:"faded Green and burnt Orange"},
    {title:"Wedding in the Sun", entertainment: "Hootie and the Blow Fish", color_scheme: "Lavender" },
    {title:"Snowflake Wedding", entertainment:"Harry Connick Jr." color_scheme:"Red, White and Silver"}
    ])

Venue.create([ 
    {name:"", location: "" },
    {name:"", location: ""},
    {name:"", location: ""},
    {name:"", location: ""}
    ])