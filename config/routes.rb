Rails.application.routes.draw do
  get 'scores/index'
  post 'scores/create'
  get '/search' => 'searches#search'
  post '/sort' => 'searches#sort'
  resources :profiles
  devise_for :users
  root to: 'homes#top'
  resources :articles, only: [:new, :index, :show, :edit, :create, :update, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    resource :likes, only: [:create, :destroy]
  end
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'likes/create'
  get 'rankings/index'
end
