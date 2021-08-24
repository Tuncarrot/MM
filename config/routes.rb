Rails.application.routes.draw do
  root 'users#new'
  get 'users/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
