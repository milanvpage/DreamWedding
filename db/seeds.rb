# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wedding.create([ 
    {food_and_beverage:"", content:"Test"},
    {title:"Wedding in the Sun", content:"Test"},
    {title:"Snowflake Wedding", content:"Test"}
    ])
    destination"
    t.string "food_and_beverage"
    t.string "entertainment"
    t.string "venue"

Category.create([ 
    {name:"Winter Wedding", season:"Winter"},
    {name:"Spring Wedding",season:"Spring"},
    {name:"Summer Wedding",season:"Summer"},
    {name:"Fall Wedding",season:"Fall"}
    ])