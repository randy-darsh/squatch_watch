Rails.application.routes.draw do
  root 'welcome#index'

  get '/squatch_map',             to: 'squatch_map#index'
  get 'auth/:provider/callback',  to: 'sessions#create'
  get 'logout',                   to: 'sessions#destroy'
end
