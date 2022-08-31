require 'rails_helper'

RSpec.describe Recipe, type: :model do

  subject { Recipe.new(name: 'Apple Pie', user: User.first, preparation_time: 60, cooking_time: 30, description: 'Put Apples and mix them up, cook them for 30 minutes', public: true) }

  it 'shows that a new recipe_food created is valid' do
    expect(subject).to be_valid
  end

  it 'shows that a new food is not valid' do
    new_recipe = Recipe.new(name: 'Apple Pie', user: User.first, preparation_time: 'yes', cooking_time: 30, description: 'Put Apples and mix them up, cook them for 30 minutes', public: true)
    expect(new_recipe).to_not be_valid
  end
  
end
