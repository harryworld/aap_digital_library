Rails.application.routes.draw do
  resources :articles

  get 'search/:s', to: 'articles#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
