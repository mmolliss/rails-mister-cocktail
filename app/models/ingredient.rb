class Ingredient < ApplicationRecord
  has_many :cocktail, through: :dose
  has_many :doses

  validates :name, presence: true, uniqueness: true
end
