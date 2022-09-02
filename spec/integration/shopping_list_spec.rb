require 'rails_helper'

RSpec.describe 'Shopping List page.', type: :feature do
  it 'Shows title' do
    visit(shopping_list_path)
    expect(page).to have_content('Shopping List')
  end

  it 'Show items to buy' do
    visit(shopping_list_path)
    expect(page).to have_content('Amount of food items to buy: 2')
    expect(page).to have_content('food needed: 0.55')
  end

  it 'Shows list of items to buy.' do
    visit(shopping_list_path)
    expect(page).to have_content('Food')
    expect(page).to have_content('Quantity')
    expect(page).to have_content('Price')
  end
end
