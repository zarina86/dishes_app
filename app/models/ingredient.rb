class Ingredient < ApplicationRecord
  has_many :dish_ingredients, dependent: :destroy
  has_many :dishes, through: :dish_ingredients
 
  validates :name, presence: true, uniqueness: true
end
