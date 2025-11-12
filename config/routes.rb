Rails.application.routes.draw do
  get 'static_pages/dashboard', to: 'static_pages#dashboard', as: 'dashboard'
  

  root "static_pages#dashboard"
end
