Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :products do
    resources :comments
  end
  resources :orders, only: [:index, :show, :create, :destroy]
  devise_for :users,:controllers => { :registrations => "users/registrations" }, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout',:sign_up => 'signup', :edit_user => 'edit'}


  root 'static_pages#index'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'products' => 'products#index'
  get 'orders' => 'orders#index'
  post 'static_pages/thank_you'
  get 'products_url' => 'products#show'

end
