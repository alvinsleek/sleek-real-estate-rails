Rails.application.routes.draw do
  resources :bookings
  resources :properties

  get "my_bookings/:id", to: "bookings#my_bookings"
  # config/routes.rb
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end