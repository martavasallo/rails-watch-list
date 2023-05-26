Rails.application.routes.draw do

  root to: 'lists#index'

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
