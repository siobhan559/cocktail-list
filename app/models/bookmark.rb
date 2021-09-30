class Bookmark < ApplicationRecord
  belongs_to :cocktail
  belongs_to :list

end
