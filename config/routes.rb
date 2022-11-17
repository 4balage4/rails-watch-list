Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'list#index'
#  resources :lists

  resources :lists do
    resources :bookmarks, only: [:index, :new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new', as: 'new'
  # get 'lists/:id', to: 'lists#show'
  # post 'lists', to: 'lists#create'

  resources :bookmarks, only: :destroy
  end
