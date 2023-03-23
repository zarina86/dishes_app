class Ingredient < ApplicationRecord
  has_many :dish_ingredients, dependent: :destroy
  has_many :dishes, through: :dish_ingredients

  before_validation :downcase_name

  validates :name, presence: true, uniqueness: true
  
  def self.ransackable_attributes(auth_object = nil)
    %w[id name]
  end

  private
  
  def downcase_name
    name.downcase!
  end
end
