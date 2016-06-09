Rails.application.routes.draw do
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  devise_for :users,:controllers => { :registrations => "users/registrations" }, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout',:sign_up => 'signup', :edit_user => 'edit'}


  root 'static_pages#index'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'products' => 'products#index'
  get 'orders' => 'orders#index'
  post 'static_pages/thank_you'
  get 'products_url' => 'products#show'

  # get 'static_pages/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
end
