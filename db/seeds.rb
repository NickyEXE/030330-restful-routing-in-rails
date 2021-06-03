# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


95.times do
    name = Faker::Food.sushi
    color = Faker::Color.color_name
    price = rand(3..15)
    Sushi.create(name: name, color: color, price: price)
    puts "Created #{color} #{name}"
end
