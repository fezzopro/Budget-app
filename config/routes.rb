Rails.application.routes.draw do
  # get 'category/index'
  # get 'category/new'
  # get 'category/edit'
  root 'home#index'
  devise_for :users
  # get 'user/index'
  resources :category, only: [:index, :new, :edit, :update, :show, :destory]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
