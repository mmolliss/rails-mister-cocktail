class Dose < ApplicationRecord
  belongs_to :ingredient, required: true
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
