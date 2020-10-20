Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do 
    collection do
      post:confirm
    end
  end
  resources :users, only: [:new, :create,:show]
end
