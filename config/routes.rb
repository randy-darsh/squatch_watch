Rails.application.routes.draw do
  root 'welcome#index'

  get '/squatch_map', to: 'squatch_map#index'
end
