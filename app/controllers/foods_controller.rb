class FoodsController < ApplicationController
  def index
    @foods = Food.where(user: @current_user)
  end
end
