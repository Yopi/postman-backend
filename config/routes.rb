Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#home'

  get '/me', to: 'users#me'
  get '/requests', to: 'requests#index'
  get '/requests/pending', to: 'requests#pending'

  resources :parcels
end
