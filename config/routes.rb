Rails.application.routes.draw do
  root to: 'tweets#index'

  devise_for :users

  resources :tweets
  resources :users do
    get 'profile'
  end
  resources :tweets do
    member do
      put "like", to: "tweets#like"
      put "dislike", to: "tweets#dislike"
    end
  end
end
