Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about', as: :about
  get 'transfer', to: 'pages#transfer', as: :transfer
  get 'checkout', to: 'pages#checkout', as: :checkout
  get 'download', to: 'pages#download', as: :download
  get 'contact', to: 'pages#contact', as: :contact
  resources :orders, except: [:index, :destroy] do
    resources :items, only: [:create, :destroy]
  end
  resources :donations
  resources :projects do
    resources :volunteers, only: [:create]
  end
  resources :solicitations, only: :destroy
  get 'dashboard', to: 'users#dashboard_adm', as: :dashboard_adm
  get 'userdashboard', to: 'users#dashboard_user', as: :dashboard_user
end
