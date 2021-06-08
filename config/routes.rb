Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: 'pages#home'

  get '/my-projects', to: 'projects#user_index', as: :my_projects
  get '/explore', to: 'pages#explore', as: :explore
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :tests, only: %i[new create index]
  end

  resources :tests, only: %i[index show edit update destroy] do
    resources :reviews, only: %i[index create new]
    resources :test_users, only: %i[create]
  end

  get 'my-chatrooms', to: 'chatrooms#index', as: :my_chatrooms

  resources :test_users, only: %i[index]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  end

