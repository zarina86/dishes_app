class DishIngredient < ApplicationRecord
  belongs_to :dish, dependent: :destroy
  belongs_to :ingredient, dependent: :destroy
end
