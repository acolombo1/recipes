class FoodsController < ApplicationController
  def index
    @foods = Food.where(user_id: @current_user)
  end
end
