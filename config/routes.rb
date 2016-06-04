Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'static_pages#index'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'products' => 'products#index'
  get 'orders' => 'orders#index'
  post 'static_pages/thank_you'

  # get 'static_pages/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
end
