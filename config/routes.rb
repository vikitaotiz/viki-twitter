Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'

  resources :tweets
  
  resources :users, only: [:index, :show] do
    member do 
      post :confirm
      delete :destroy
    end
  end

  resources :tweets, only: [:index, :create] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
end
