class Bookmark < ApplicationRecord
  self.table_name = "watchlist_bookmarks"
  belongs_to :movie, foreign_key: :watchlist_movie_id
  belongs_to :list, foreign_key: :watchlist_list_id

  validates :comment, length: { minimum: 6 }

  # validation to ensure the user can't one movie on the same list twice. removed to not conflict with shared db
  validates :watchlist_movie_id, presence: true, uniqueness: { scope: :watchlist_list_id }
end
