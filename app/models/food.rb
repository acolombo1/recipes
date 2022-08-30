class Food < ApplicationRecord
  has_many :recipes_foods
  belongs_to :user
end
