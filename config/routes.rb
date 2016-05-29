Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'static_pages#landing_page'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'products' => 'products#index'



  # get 'static_pages/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
end
