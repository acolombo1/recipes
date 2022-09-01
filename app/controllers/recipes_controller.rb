class RecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = Recipe.where(user: current_user)
  end

  def show
    @current_user = current_user
    @recipe = Recipe.find(params[:recipe_id])
  end
end
