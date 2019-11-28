Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :posts, only: [:index, :new, :create]
  resources :users, only: :show
end
