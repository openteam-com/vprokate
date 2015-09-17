Rails.application.routes.draw do
  root to: 'main_page#index', :defaults => { :prefix => 'bicycle' }
  resources :phone_orders, only: [:create]
  get 'mopedi_scooteri', :as => 'motorbike',    :to => 'main_page#index', :defaults => { :prefix => 'motorbike' }
  get 'avto_mashini',    :as => 'avto_mashini', :to => 'main_page#index', :defaults => { :prefix => 'avto_mashini' }
  get 'motocykli',       :as => 'motocykli',    :to => 'main_page#index', :defaults => { :prefix => 'motocykli' }

  namespace :manage do
    root to: 'page_meta#index'
    resources :page_meta, only: [:update, :edit]
    resources :phone_orders, only: [:index]
  end
end
