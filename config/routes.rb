Rails.application.routes.draw do
  resources :sales_records
  resources :sales_people
  get 'static_pages/dashboard', to: 'static_pages#dashboard', as: 'dashboard'
  post "/create_sales_record", to: "sales_records#create_sales_record"
  root "static_pages#dashboard"
end
