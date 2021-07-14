Rails.application.routes.draw do
  get 'profiles/new'
  resources :pofiles
  devise_for :users
  root to: 'homes#top'
  resources :articles
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'favorites/create'
  get 'favorites/destroy'
  get 'post_comments/create'
  get 'post_comments/destroy'
  get 'post_comments/edit'
  get 'homes/top'
  get 'homes/about'


  end
