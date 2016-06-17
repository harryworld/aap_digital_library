Rails.application.routes.draw do
  resources :categories
  resources :authors
  resources :issues
  resources :articles

  get 'search', to: 'articles#search'
  post 'upload', to: 'articles#upload'

  root to: 'issues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
