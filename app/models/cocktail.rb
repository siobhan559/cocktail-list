class Cocktail < ApplicationRecord
  has_many :bookmarks

  validates :name, presence: true

end
