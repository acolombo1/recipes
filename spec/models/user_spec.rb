require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Apple Pie') }

  it 'shows that a new user created is valid' do
    expect(subject).to be_valid
  end

  it 'shows that a new user is not valid' do
    new_user = User.new
    expect(new_user).to_not be_valid
  end
end
