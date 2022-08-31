Rails.application.routes.draw do
  resources :order_items
  get 'cart',to:'cart#show'
  get 'search', to:'menu#search'
  resources :categories
  get 'menu', to:'menu#index'
  devise_for :users
  devise_scope :user do    
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  resources :products
  root'pages#home'
  get 'catering',to:'pages#catering'
  get 'info',to:'pages#info'
  post 'menu/create_cart', to: 'menu#create_cart'
  post 'menu/update_cart', to: 'menu#update_cart'

  

#   
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
