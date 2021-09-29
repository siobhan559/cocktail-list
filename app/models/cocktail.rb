class Cocktail < ApplicationRecord

  validates :name, presence: true
  validates :preparation, presence: true, length: { minimum: 10 }

end
