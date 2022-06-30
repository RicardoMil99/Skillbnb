Rails.application.routes.draw do
  devise_for :services
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :bookings, only: :create
  end
  resources :bookings, except: :create
  get "/dashboard", to: "dashboards#index"

  resources :users, only: :index
end
