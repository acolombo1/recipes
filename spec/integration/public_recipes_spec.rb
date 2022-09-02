require 'rails_helper'

RSpec.describe 'Public Recipes page.', type: :feature do
  before do
    visit(public_recipes_path)
  end

  it 'Shows Title' do
    expect(page).to have_content('Public Recipes')
  end

  it 'Shows a recipe by a user' do
    expect(page).to have_content('Milk Shake')
    expect(page).to have_content('by Tom')
  end
end
