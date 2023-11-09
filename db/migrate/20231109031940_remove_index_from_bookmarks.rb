class RemoveIndexFromBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_index :bookmarks, [:movie_id, :list_id], unique: true
  end
end
