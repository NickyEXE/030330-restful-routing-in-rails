Rails.application.routes.draw do

  get '/sushis/search/:query', to: "sushis#search", as: "search"
  resources :sushis, only: [:index, :show]


  # http verb - GET
  # uri path - "/sushis"
  # controller action - index

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
