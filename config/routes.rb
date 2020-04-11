Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts, only: [:show, :new, :edit, :destroy, :create, :update] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
