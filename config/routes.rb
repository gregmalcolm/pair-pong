PairPong::Application.routes.draw do
  get "/auth/:provider/callback" => "sessions#create"
  get "/auth/failure" => "sessions#failure"

  get "/home" => "home#index"

  root to: "home#index"
end
