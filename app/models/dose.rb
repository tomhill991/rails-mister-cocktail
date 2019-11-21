class Dose < ApplicationRecord
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true

  belongs_to :ingredient, dependent: :destroy
  validates :cocktail, uniqueness: { scope: :ingredient }
end
