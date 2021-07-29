Rails.application.routes.draw do

  resources :magazines
  resources :oenologists
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :wines
  resources :strains
  root 'wines#index'






end
