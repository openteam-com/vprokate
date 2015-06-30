Rails.application.routes.draw do
  root to: 'main_page#index'
  resources :main_page, only: [:index]

  namespace :manage do
    root to: 'page_meta#edit'
    resources :page_meta, only: [:update]
  end
end
