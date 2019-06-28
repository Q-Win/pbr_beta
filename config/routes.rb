Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'recipes#index'
  get '/login', to: 'session#new'

  resources :recipes, only: [:index, :create, :update, :new, :show]
end
