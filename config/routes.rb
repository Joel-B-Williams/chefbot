Rails.application.routes.draw do
  resources :recipes do
  	resources :ingredients
  end
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  root 'recipes#index'
end