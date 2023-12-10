class List < ApplicationRecord
  self.table_name = "watchlist_lists"
  has_many :bookmarks, dependent: :destroy, foreign_key: "watchlist_list_id"
  has_many :movies, through: :bookmarks
  has_one_attached :image

  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :image, presence: true
end
