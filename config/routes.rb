OauthClient::Application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', as: 'signout'

  resources :products
  root to: 'products#index'
end
