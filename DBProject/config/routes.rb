Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome/index'

  resources :invoices
  resources :addresses
  resources :customers
  resources :employees
  resources :tablets
  resources :laptops
  resources :phones
  resources :vendor_products
  resources :vendor_pos
  resources :vendors
  get 'db_project/index'
  root 'welcome#index'
  get 'account', to: 'account#account', as: 'account'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
