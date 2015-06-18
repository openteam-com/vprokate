Rails.application.routes.draw do
  resources :main_page, only: [:index]
  root to: 'main_page#index'
end
