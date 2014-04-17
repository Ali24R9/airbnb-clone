Airbnb::Application.routes.draw do
  devise_for :users
  root :to => 'accomodations#index'
  resources :users
  resources :accomodations
  resources :bookings
end
