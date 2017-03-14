Rails.application.routes.draw do

  devise_for :users, :path => "profile", :controllers => { registrations: 'users/registrations' }

  resource :users, :path => "profile", only: [:show]
  root 'static#index'

end
