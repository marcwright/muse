Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#about"

  get "artists", to: "artists#index"
  get "artists/:id", to: "artists#show", as: :artist
end
