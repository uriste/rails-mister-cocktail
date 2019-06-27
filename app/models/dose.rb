class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  # validates :ingredient, uniqueness: { scope: :cocktail }
  belongs_to :cocktail
  belongs_to :ingredient
end

# (dose, ingredient)
