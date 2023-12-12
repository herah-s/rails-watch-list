class Movie < ApplicationRecord
  self.table_name = "watchlist_movies"
  has_many :bookmarks, foreign_key: :watchlist_movie_id
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true, allow_blank: false
  validates :overview, presence: true, uniqueness: true, allow_blank: false
end
