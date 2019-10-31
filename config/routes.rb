Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'recipes#index'
  get '/login', to: 'session#new'
  get '/seed', to: 'seed#index'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  delete '/favorites', to: 'favorites#destroy'

  resources :recipes, only: [:index, :create, :update, :new, :show, :edit]
  resources :users, only: [:show]
  resources :favorites, only: [:new, :create]

  namespace :api do
    namespace :v1 do
      get '/recipes', to: 'recipe#index'
    end
  end
end
