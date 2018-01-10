Rails.application.routes.draw do
  root 'welcome#index'

  resources :squatch_reports, only: [:index, :show]
  get '/about',                   to: 'about#index'
  get '/squatch_map',             to: 'squatch_map#index'
  get 'auth/:provider/callback',  to: 'sessions#create'
  get 'logout',                   to: 'sessions#destroy'
end
