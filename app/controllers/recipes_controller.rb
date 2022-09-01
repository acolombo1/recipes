class RecipesController < ApplicationController
  def index
    @recipes = Recipe.where(user: User.first)
    # @recipes = Recipe.all.where(user: @current_user)
    # @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
  end
end
