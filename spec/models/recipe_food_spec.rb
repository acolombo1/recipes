require 'rails_helper'

RSpec.describe RecipeFood, type: :model do

  subject { RecipeFood.new(quantity: 5, food: Food.first, recipe: Recipe.last) }

  it 'shows that a new recipe_food created is valid' do
    expect(subject).to be_valid
  end

  it 'shows that a new food is not valid' do
    new_recipe_food = RecipeFood.new(quantity: 'no', food: Food.first, recipe: Recipe.last)
    expect(new_recipe_food).to_not be_valid
  end
  
end