Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "artists#index"

  get "about", to: "application#about"

  get "artists", to: "artists#index"
  get "artists/new", to: "artists#new"
  get "artists/:id", to: "artists#show", as: :artist
  post "artists", to: "artists#create"
  get "artists/:id/edit", to: "artists#edit", as: :artist_edit
  patch "artists/:id", to: "artists#update"
  delete "artists/:id", to: "artists#destroy"

  get 'songs/new', to: "songs#new"
  post "songs", to: "songs#create"
  post "schmitty", to: "artists#add_song", as: :add_song
end
