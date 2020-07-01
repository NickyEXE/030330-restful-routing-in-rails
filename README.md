# README

## This Lecture Largely Relies on the Slideshow Available Here

https://docs.google.com/presentation/d/14RQgiqdWn5CGL5yAh4uCJAwLaG0YlDcbPfLwt9_OG1Y/edit?usp=sharing

## Sushi App

A Sushi should have a:

- Name
- Price
- Color

## Generating Our Model

In previous lectures, we showed you the rails generators `model`, `migration`, `controller`, and the forbidden `scaffold`.

One helpful additional generator is the `resource` generator, which generates a model, a controller, routes, and an empty view file.

## Seeding Some Sushi

```ruby
50.times do |t|
    color = Faker::Color.color_name
    sushi = Faker::Food.sushi
    price = rand(3..15)
    Sushi.create(color: color, sushi: sushi, price: price)
end
```
