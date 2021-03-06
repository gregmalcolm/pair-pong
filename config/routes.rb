PairPong::Application.routes.draw do
  resources :exercises, defaults: { format: 'json' }
  resources :invitations, defaults: { format: 'json' }
  resources :users

  get "/auth/:provider/callback" => "sessions#create"
  get "/auth/failure" => "sessions#failure"
  get 'signout', to: 'sessions#destroy', as: 'signout'

  get "/home" => "home#index"

  root to: "home#index"
end
