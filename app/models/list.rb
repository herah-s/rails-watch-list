class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :image

  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :image, presence: true
end
