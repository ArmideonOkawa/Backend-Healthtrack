Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: 'users#login'
  get '/persist', to: 'users#persist'
  resources :users, only: [:show, :create]

  get "/foods", to: "foods#index"
end
