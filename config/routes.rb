# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "foods#index"

  # get "/users", to: "users#index"
  get "/foods", to: "foods#index"
  get "/recipes", to: "recipes#index"
  get "/recipes/:recipe_id", to: "recipes#show"
  get "/public_recipes", to: "public_recipes#index"
  get "/shopping_list", to: "shopping_list#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
