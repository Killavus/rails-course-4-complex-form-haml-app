Rails.application.routes.draw do
  resources :genres
  resources :songs

  root to: 'welcome#index'
end
