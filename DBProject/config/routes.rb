Rails.application.routes.draw do
  get 'signin/index'
  resources :users
  get 'welcome/index'

  resources :invoices
  resources :addresses
  resources :usernames
  resources :customers
  resources :employees
  resources :tablets
  resources :tvs
  resources :laptops
  resources :phones
  resources :vendor_products
  resources :vendor_pos
  resources :vendors
  get 'dbproject_development/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
