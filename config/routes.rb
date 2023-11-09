Rails.application.routes.draw do
  # As a user, I can see all my movie lists / GET "lists"
  # As a user, I can create a movie list / GET "lists/new" POST "lists"
  # As a user, I can see the details of a movie list / GET "lists/42"
  # As a user, I can bookmark a movie inside a movie list / GET "lists/42/bookmarks/new" POST "lists/42/bookmarks"
  # As a user, I can destroy a bookmark / DELETE "bookmarks/25"
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
