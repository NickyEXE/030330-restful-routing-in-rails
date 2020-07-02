# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

90.times do |t|
    color = Faker::Color.color_name
    name = Faker::Food.sushi
    price = rand(3..15)
    Sushi.create(color: color, name: name, price: price)
end

puts "Hello from the seed file"
puts "Hi again"
