require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(name: 'Apple', user: User.first, price: 0.10, quantity: 500) }

  it 'shows that a new food created is valid' do
    expect(subject).to be_valid
  end

  it 'shows that a new food is not valid' do
    new_food = Food.new(name: 'Apple', user: User.first, price: -1, quantity: 500)
    expect(new_food).to_not be_valid
  end
end
