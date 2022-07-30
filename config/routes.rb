Rails.application.routes.draw do
  devise_for :users
  root 'store#index', as: 'store_index'
  #get 'store/index'
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
