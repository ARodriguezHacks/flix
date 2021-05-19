Rails.application.routes.draw do
  resources :genres
  resources :users
  root "movies#index"

  resource :session, only: [:new, :create, :destroy]

  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  get "signup" => "users#new"
  get "signin" => "sessions#new"
end
