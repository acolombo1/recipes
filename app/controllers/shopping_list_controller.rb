class ShoppingListController < ApplicationController
  def index
    @current_user = current_user
    @items = {}
  end
end
