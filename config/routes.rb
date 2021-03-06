Rails.application.routes.draw do
  root 'welcome#index'

  resources :big_foot_reports, only: [:index, :show, :new, :create]

  get '/about',                   to: 'about#index'
  get 'auth/:provider/callback',  to: 'sessions#create'
  get 'logout',                   to: 'sessions#destroy'
  get '/squatch_map',             to: 'squatch_map#index'
  get '/search',                  to: 'search#index'
end
