Rails.application.routes.draw do
  resources :articles

  get 'search', to: 'articles#search'
  post 'upload', to: 'articles#upload'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
