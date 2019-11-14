class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates_uniqueness_of :cocktail, scope: :ingredient_id
  validates_uniqueness_of :ingredient, scope: :cocktail_id
  validates :description, presence: true
end
