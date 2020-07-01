Rails.application.routes.draw do
  get '/sushis/search/:color', to: 'sushis#search', as: 'sushi_search'
  resources :sushis
  # get '/sushis', to: 'sushis#index', as: 'sushis'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
