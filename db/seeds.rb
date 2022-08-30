# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom')
second_user = User.create(name: 'Lilly')

Food.create(name: 'Apple', user: first_user, price: 0.10, quantity: 500)

Recipe.create(name: 'Apple Pie', user: first_user, preparation_time: 60, cooking_time: 30, description: 'Put Apples and mix them up', public: true)
