Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/my-projects', to: 'projects#user_index', as: :my_projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/explore', to: 'pages#explore', as: :explore
  resources :projects do
    resources :tests, only: %i[new create index]
  end
<<<<<<< HEAD

  resources :tests, only: %i[index show edit update] do
=======
  
  resources :tests, only: %i[index show edit update destroy] do
>>>>>>> 1ee9428eaebc550022f231dde570d60c38f2e931
    resources :reviews, only: %i[index create new]
  end
end
