Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :projects do
    resources :tests, only: %i[new create index]
  end
  resources :tests, only: %i[show]
end
