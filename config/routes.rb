Rails.application.routes.draw do
  # get 'home/welcome'
  #
  # get 'home/index'
  #
  # get 'questions/welcome'
  #
  # get 'questions/index'
  root 'home#index'
  resources :questions
  # resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
