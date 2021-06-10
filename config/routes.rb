Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  resources :orders, except: [:index, :destroy] do
    resources :items, only: :create
  end
  resources :donations
  resources :projects do
    resources :volunteers, only: [:create]
  end
  resources :solicitations, only: :destroy
  get 'dashboard', to: 'users#dashboard', as: :dashboard
end
