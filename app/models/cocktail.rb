class Cocktail < ApplicationRecord

  validates :name, presence: true
  validates :preparation, presence: true

end
