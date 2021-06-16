Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about', as: :about
  get 'transfer', to: 'pages#transfer', as: :transfer
  get 'pages/download', as: :download
  get 'contact', to: 'pages#contact', as: :contact
  post 'readers', to: 'readers#create'
  resources :orders, except: :index do
      get 'mailer', to: 'orders#mailer', as: :mailer
    resources :items, only: [:create, :destroy]
  end
  resources :donations
  resources :projects, except: [:destroy] do
    resources :volunteers, only: [:create]
  end
  resources :solicitations, only: :destroy
  get 'dashboard', to: 'users#dashboard_adm', as: :dashboard_adm
  get 'userdashboard', to: 'users#dashboard_user', as: :dashboard_user
  namespace :admin do
    resources :projects, except: [:index, :show]
    resources :volunteers, only: [:edit, :update, :destroy]
  end
end
