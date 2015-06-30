Rails.application.routes.draw do
  root to: 'main_page#index'
  resources :main_page, only: [:index]
  resources :phone_orders, only: [:create]

  namespace :manage do
    root to: 'page_meta#edit'
    resources :page_meta, only: [:update]
    resources :phone_orders, only: [:index]
  end
end
