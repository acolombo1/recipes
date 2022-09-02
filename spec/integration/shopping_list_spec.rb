require 'rails_helper'

RSpec.describe 'Shopping List page.', type: :feature do
  before do
    user = User.first
    sign_in(user)
    user.confirm
    visit(shopping_list_path)
  end

  it 'Shows title' do
    expect(page).to have_content('Shopping List')
  end

  it 'Show items to buy' do
    expect(page).to have_content('Amount of food items to buy: 2')
    expect(page).to have_content('food needed: 0.55')
  end

  it 'Shows list of items to buy.' do
    expect(page).to have_content('Food')
    expect(page).to have_content('Quantity')
    expect(page).to have_content('Price')
  end
end
