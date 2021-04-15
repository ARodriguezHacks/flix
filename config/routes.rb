Rails.application.routes.draw do
  resources :users
  root "movies#index"

  resource :session, only: [:new, :create, :destroy]

  resources :movies do
    resources :reviews
  end

  get "signup" => "users#new"
end
