require 'rails_helper'

RSpec.describe RecipeFood, type: :model do

  subject { RecipeFood.new(quantity: 5, food: Food.first, recipe: Recipe.last) }

  # Food.create(name: 'Bread', user: second_user, price: 0.5, quantity: 750)

  # Recipe.create(name: 'Apple Pie', user: first_user, preparation_time: 60, cooking_time: 30, description: 'Put Apples and mix them up, cook them for 30 minutes', public: true)

  it 'shows that a new food created is valid' do
    expect(subject).to be_valid
  end

  # it 'shows that a new food is valid' do
  #   new_recipe_food = Food.new(name: 'Apple', user: User.first, price: -1, quantity: 500)
  #   expect(new_food).to_not be_valid
  # end
  
end