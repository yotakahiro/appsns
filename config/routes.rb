Rails.application.routes.draw do


  get 'users/index'

  get 'users/show'

root 'posts#index'
  devise_for :users
  resources :users
  resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
