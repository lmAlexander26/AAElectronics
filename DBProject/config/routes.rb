Rails.application.routes.draw do
  resources :users
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
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
