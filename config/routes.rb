Rails.application.routes.draw do
  get 'scores/index'
  post 'scores/create'
  get '/search' => 'searches#search'
  post '/sort' => 'searches#sort'
  get 'profiles/new'
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
  get 'profiles/:id/edit' => 'profiles#edit'
  get 'profiles/:id/show' => 'profiles#show'
  get 'articles/:id/show' => 'articles#show'
  patch 'articles/:id/update' => 'articles#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'likes/create'
  get 'rankings/index'
end
