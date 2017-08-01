Rails.application.routes.draw do
  get 'answers/index'

  get 'answers/create'

  get 'answers/new'

  get 'answers/edit'

  get 'answers/show'

  get 'answers/update'

  get 'answers/destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'home/welcome'
  #
  # get 'home/index'
  #
  # get 'questions/welcome'
  #
  # get 'questions/index'
  root 'home#index'
  resources :questions
  resources :answers
  resources :users
  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
