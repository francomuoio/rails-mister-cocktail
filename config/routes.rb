Rails.application.routes.draw do

  get 'reviews/new'

  get 'reviews/create'

resources :cocktails, only: [ :index, :new, :show, :create ] do
  resources :doses, only: [ :new, :create ]
  resources :reviews, only: [ :new, :create ]
end
resources :doses, only: [ :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'cocktails#index'
end
