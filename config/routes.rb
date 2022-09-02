# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "foods#index"

  get "/foods", to: "foods#index", as: "foods"
  get "/recipes", to: "recipes#index", as: "recipes"
  get "/recipes/:recipe_id", to: "recipes#show", as: "recipes_show"
  get "/public_recipes", to: "public_recipes#index", as: "public_recipes"
  get "/shopping_list", to: "shopping_list#index", as: "shopping_list"

  get "/foods/new", to: "foods#new", as: "new_food"
  post "/foods", to: "foods#create", as: "create_food"
  delete "foods/:food_id", to: "foods#destroy", as: "destroy_food"

end
