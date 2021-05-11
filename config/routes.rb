Rails.application.routes.draw do
  resources :favorites
  resources :users
  root "movies#index"

  resource :session, only: [:new, :create, :destroy]

  resources :movies do
    resources :reviews
  end

  get "signup" => "users#new"
  get "signin" => "sessions#new"
end
