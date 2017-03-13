Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root 'static#index'

end
