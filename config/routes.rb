Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#home'

  get '/me', to: 'users#me'
  get '/requests/pending', to: 'requests#pending'
  get '/requests', to: 'requests#index'

  resources :parcels
end
