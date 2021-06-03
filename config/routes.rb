Rails.application.routes.draw do
  resources :sushis, only: [:index]
  # get "/sushis", to: "sushis#index", as: "sushis"
  get "/sushis/by-color/:color", to: "sushis#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
