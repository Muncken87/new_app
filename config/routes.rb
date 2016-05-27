Rails.application.routes.draw do
  resources :products
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/cars'
  get 'static_pages/products'


  # get 'static_pages/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#index'
end
