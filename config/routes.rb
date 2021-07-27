Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :wines
  resources :strains
  root 'wines#index'






end
