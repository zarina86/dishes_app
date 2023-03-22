class Dish < ApplicationRecord
  has_many :dish_ingredients, dependent: :destroy 
  has_many :ingredients, through: :dish_ingredients

  before_validation :downcase_name

  validates :name, presence: true, uniqueness: true
  validates :ingredients, presence: true

  private
  
  def downcase_name
    name.downcase!
  end
end
