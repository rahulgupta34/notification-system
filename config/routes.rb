Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :notifications, only: [ :index, :mark_read ] do
    member do 
      get :mark_read
    end
  end
  root "dashboard#show"
end
