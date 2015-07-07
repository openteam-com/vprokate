Rails.application.routes.draw do
  root to: 'main_page#index', :defaults => {:prefix => 'bicycle'}
  resources :phone_orders, only: [:create]
  get 'mopedi_scooteri', :as => 'motorbike', :to => "main_page#index", :defaults => {:prefix => 'motorbike'}

  namespace :manage do
    root to: 'page_meta#edit'
    resources :page_meta, only: [:update]
    resources :phone_orders, only: [:index]
  end
end
