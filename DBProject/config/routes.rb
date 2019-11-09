Rails.application.routes.draw do
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
  get 'db_project/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
