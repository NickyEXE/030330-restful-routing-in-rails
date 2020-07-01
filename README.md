# README

## This Lecture Largely Relies on the Slideshow Available Here

https://docs.google.com/presentation/d/14RQgiqdWn5CGL5yAh4uCJAwLaG0YlDcbPfLwt9_OG1Y/edit?usp=sharing

## RESTular, a Resource for Generating Custom Routes:

http://www.restular.com/

## Sushi App

A Sushi should have a:

- Name
- Price
- Color

## Generating Our Model

In previous lectures, we showed you the rails generators `model`, `migration`, `controller`, and the overly powerful `scaffold`.

One helpful additional generator is the `resource` generator, which generates a model, a controller, routes, and an empty view file.

The code to generate our sushi is:

`rails g resource sushi name color price:integer`

You can add `--no-test-framework` to the end of the above to stop it from generating test files and folders.

## Seeding Some Sushi

First, ensure your database is migrated using `rails db:migrate` and then let's add the below to our db/seeds.rb:

```ruby
50.times do |t|
    color = Faker::Color.color_name
    name = Faker::Food.sushi
    price = rand(3..15)
    Sushi.create(color: color, name: name, price: price)
end
```

## Doing Our Index Method

Running a resource generator has left our routes wide open! `resources :sushis` gives us all of the RESTful routes.

Let's lock it down with `resources :sushis, only: [:index]` while we build out our index method.
