class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :cocktails, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

end
