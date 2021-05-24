Rails.application.routes.draw do
  root "movies#index"

  resources :genres

  resources :users

  resource :session, only: [:new, :create, :destroy]

  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  get "signup" => "users#new"
  get "signin" => "sessions#new"
  get "movies/filter/:filter" => "movies#index", as: :filtered_movies
end
