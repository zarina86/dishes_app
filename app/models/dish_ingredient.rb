class DishIngredient < ApplicationRecord
  belongs_to :dish, optional: true
  belongs_to :ingredient, optional: true
end
