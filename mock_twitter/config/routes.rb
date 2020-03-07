Rails.application.routes.draw do
  resources :tweets
  devise_for :users

  resources :users, only: :index
  post 'unfollow_user', to: 'users#unfollow_user'
  post 'follow_user', to: 'users#follow_user'
  get 'user_profile', to: 'users#user_profile'
  namespace :api do
    post 'authenticate', to: 'authentication#authenticate'
    post 'create_user', to: 'users#create_user'
    namespace :v1 do
      get 'tweets', to: 'tweets#index'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tweets#index"
end
