class Dish < ApplicationRecord
  has_many :dish_ingredients,  dependent: :destroy
  has_many :ingredients, through: :dish_ingredients
  
  attr_accessor :ingredients_validator

  validates :name, presence: true, uniqueness: true
  validates :ingredients, presence: true
  validate :check_for_ingredients_validator

  def ingredients=(value)
    if value.empty?
      self.ingredients_validator = true
    else
      super(value)
    end
  end

  private

  def check_for_ingredients_validator
    self.errors.add(:ingredients, "can't be blank") if self.ingredients_validator==true
  end
end
