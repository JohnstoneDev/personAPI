Rails.application.routes.draw do
  get '/api', to: 'users#index'
  post '/api', to: 'users#create'
  get '/api/:user_id', to: 'users#show'
  patch '/api/:user_id', to: 'users#update'
  delete '/api/:user_id', to: 'users#destroy'

  root "application#index"
end
