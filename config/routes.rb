Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects, only: [:show, :new, :create, :index, :edit, :update, :show]
  resources :contacts, only: :create
end
