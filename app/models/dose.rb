class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  # [cocktail, ingredient] pairings should be unique
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
