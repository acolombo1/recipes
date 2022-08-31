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
Food.create(name: 'Butter', user: first_user, price: 1.10, quantity: 200)
Food.create(name: 'Milk', user: first_user, price: 0.90, measurement_unit: 'lt', quantity: 2)
Food.create(name: 'Flour', user: first_user, price: 0.50, quantity: 1500)
Food.create(name: 'Lemon juice', user: first_user, measurement_unit: 'lt', price: 1.60, quantity: 0.9)
Food.create(name: 'Cocoa mix', user: first_user, price: 2, quantity: 800)
Food.create(name: 'Sugar', user: first_user, price: 0.8, quantity: 2000)
Food.create(name: 'Bread', user: second_user, price: 0.5, quantity: 750)

Recipe.create(name: 'Apple Pie', user: first_user, preparation_time: 60, cooking_time: 30, description: 'Put Apples and mix them up, cook them for 30 minutes', public: true)
Recipe.create(name: 'Milk Shake', user: first_user, preparation_time: 5, cooking_time: 0, description: 'Put milk and cocoa mix, then shake it', public: true)
Recipe.create(name: 'Lemon Flour', user: second_user, preparation_time: 5, cooking_time: 5, description: 'Put Lemon juice and flour and mix them up, cook it for 5 minutes in the microwave oven', public: true)
Recipe.create(name: 'Bread Butter Sugar', user: first_user, preparation_time: 5, cooking_time: 0, description: 'Spread the butter over the bread, then add sugar on it', public: false)
