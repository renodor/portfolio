Rails.application.routes.draw do
  # Needed for kamal
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users
  root to: 'pages#home'

  post '/contact', to: 'pages#create_contact'

  resources :projects, only: %i[index show new create edit update]
end
