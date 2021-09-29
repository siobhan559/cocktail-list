class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :cocktails, through: :bookmarks

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

end
