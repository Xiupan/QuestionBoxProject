Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'home/welcome'
  #
  # get 'home/index'
  #
  # get 'questions/welcome'
  #
  # get 'questions/index'
  root 'home#index'
  resources :questions do resources :answers
  end
  resources :users
  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
