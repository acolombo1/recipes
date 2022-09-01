class PublicRecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = Recipe.where(public: true)
    @food_count = Hash.new
    @price = Hash.new
    RecipeFood.all.includes([:recipe, :food]).each do |rf|
      if rf.recipe.public == true
        @food_count[rf.recipe_id] = 0 if @food_count[rf.recipe_id] == nil
        @food_count[rf.recipe_id] += 1
        @price[rf.recipe_id] = 0 if @price[rf.recipe_id] == nil
        @price[rf.recipe_id] += rf.quantity * rf.food.price
      end
    end
  end
end
