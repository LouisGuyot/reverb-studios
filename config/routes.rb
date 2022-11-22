Rails.application.routes.draw do
  devise_for :users
  root to: "studios#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :studios, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
end
