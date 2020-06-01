Rails.application.routes.draw do
  root to:  'toppages#index'
  resources :tasks
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
