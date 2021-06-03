Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/feed', to: 'projects#index', as: :feed
  get '/my-projects', to: 'projects#user_index', as: :my_projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :projects do
    resources :tests, only: %i[new create index]
  end

  resources :tests, only: %i[index show edit update] do
    resources :reviews, only: %i[index create new]
  end

end
