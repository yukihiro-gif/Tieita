Rails.application.routes.draw do
  get 'profiles/new'
  resources :profiles
  devise_for :users
  root to: 'homes#top'
  resources :articles, only:[:new, :index, :show, :edit, :create, :update, :destroy] do
    resources :post_comments, only:[:create, :destroy]
  end
  get 'profiles/:id/edit' => 'profiles#edit'
  get 'profiles/:id/show' => 'profiles#show'
  get 'articles/:id/show' => 'articles#show'
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'favorites/create'
  get 'favorites/destroy'
  get 'homes/top'
  get 'homes/about'


  end
