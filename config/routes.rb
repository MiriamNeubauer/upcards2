Upcards2::Application.routes.draw do

  devise_for :users

  root to: "bizcards#index"

  resources :users
  resources :bizcards
  resources :twilios

  get "comments/index"

  get "comments/new"

  get "comments/show"

  get "bizcards/index"

  get "bizcards/new"

  match "twilios" => 'twilios#index'


end
