require 'rails_helper'

RSpec.describe 'Main page.', type: :feature do
  before do
    user = User.first
    sign_in(user)
    user.confirm
    visit(foods_path)
  end
  
  it 'Shows Foods' do
    expect(page).to have_content('Food')
    expect(page).to have_content('Measurement Unit')
    expect(page).to have_content('Apple')
    expect(page).to have_content('Price')
    expect(page).to have_content('Action')
  end

  it 'Click on Add Food redirects to new food page' do
    click_button('Add Food')
    expect(page).to have_current_path new_food_path
    expect(page).to have_content('New Food')
  end

  it 'Click on Delete redirects to food page and deletes item' do
    expect(page).to have_content('Nothing')
    first(:link, 'Delete').click
    expect(page).to have_current_path foods_path
    expect(page).to_not have_content('Nothing')
  end
end
