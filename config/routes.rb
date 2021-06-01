Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tests, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tests do
    resources :projects, only: %i[new create]
  end
  resources :projects, only: [:destroy]
end
