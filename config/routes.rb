Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :projects, only: [:show, :new, :create, :index, :edit, :update, :show]
  resources :contacts, only: :create
end
