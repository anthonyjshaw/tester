Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: 'pages#home'

    get '/my-projects', to: 'projects#user_index', as: :my_projects
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/explore', to: 'pages#explore', as: :explore
    resources :projects do
    resources :tests, only: %i[new create index]
    resources :chatrooms, only: :create
    end

    resources :tests, only: %i[index show edit update destroy] do
    resources :reviews, only: %i[index create new]
    resources :test_users, only: %i[create]
    end

  get 'my-chatrooms', to: 'chatrooms#index', as: :my_chatrooms

  # Like and Share Feature implementation to our cards
  # put ‘/post/:id/like’ to: ‘posts#like’, as: ‘like’

  put '/post/:id/like', to: 'posts#like', as: 'like'

  resources :test_users, only: %i[index] do
    member do
      get :set_done
    end
   end

    resources :chatrooms, only: :show do
    resources :messages, only: :create
    end

  end

