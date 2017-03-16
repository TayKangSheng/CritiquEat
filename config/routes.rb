Rails.application.routes.draw do

  # post 'user_save_review/create/:review_id', to: 'user_save_review#create', path: "user_save_review"
  # delete 'user_save_review/destroy/:review_id', to: 'user_save_review#destroy', path: "user_save_review"

  devise_for :users, :path => "profile", :controllers => { registrations: 'users/registrations' }
  resources :users, :path => "profile", only: [:show]
  resources :reviews, except: [:index]
  resources :user_save_reviews, only: [:create, :destroy]

  root 'reviews#index'
end
