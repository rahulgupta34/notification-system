Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :notifications, only: [ :index ]
  root "dashboard#show"
end
