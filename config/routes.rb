Rails.application.routes.draw do

  devise_for :users, :path => "profile", :controllers => { registrations: 'users/registrations' }
  resources :users, :path => "profile", only: [:show]
  resources :reviews, except: [:index]

  root 'reviews#index'
end
