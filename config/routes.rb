Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  patch "/prototypes/:id", to: "prototypes#update"
  resources :prototypes, only: [:new, :create, :show, :edit, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
