Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/show'
  # get 'restaurants/create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id', to: 'restaurants#show'
  # post 'restaurants', to: 'restaurants#create'
  # get "restaurants/:id/reviews/new", to: 'reviews#new'
  # post "restaurants/:id/reviews",

  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create, :show]

  end
end
