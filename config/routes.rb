Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do
    resources :comments
    collection do
      post:confirm
    end
  end
  resources :users, only: [:new, :create,:show ,:index]
  resources :relationships, only: [:create, :destroy]
end
