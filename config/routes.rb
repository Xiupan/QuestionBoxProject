Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  namespace :api do
    get 'questions' => 'questions#index'
    post 'questions/new' => 'questions#create'
    post 'answers/new' => 'answers#create'
    post 'answer/correct/:id' => 'answers#markCorrect'
    delete 'question/:id/delete' => 'questions#destroy'
  end

  resources :questions do resources :answers
  end
  resources :users

  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
