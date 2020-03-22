Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects, only: [:show, :new, :create, :index, :edit, :update]
  resources :contacts, only: :create
end
