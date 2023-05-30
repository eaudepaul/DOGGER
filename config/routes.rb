Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
  resources :dogs do
    resources :bookings, only: %i[create index]
  end

  resources :bookings, only: %i[destroy update]
end
