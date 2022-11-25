Rails.application.routes.draw do
  devise_for :users
  root to: "studios#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :studios, only: %i[index show new create destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[ index show destroy]

end
