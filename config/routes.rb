Rails.application.routes.draw do
  root 'users#new'
  get 'users/signup', to: 'users#new'
  resources :users
end
