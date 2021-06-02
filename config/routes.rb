Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects

  get '/my-projects', to: 'projects#user_index', as: :my_projects


  resources :tests, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
