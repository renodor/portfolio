Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  post '/contact', to: 'pages#create_contact'

  resources :projects, only: %i[index show new create edit update]
end
