class RecipesController < ApplicationController
  def index
    @recipes = Recipe.where(user_id: @current_user)
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
  end
end
