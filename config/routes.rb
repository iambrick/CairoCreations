Rails.application.routes.draw do
  devise_for :customers
  resources :products, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :cart, only: [:create, :destroy]

  scope "/checkout" do
    post "create", to: "checkout#create", as: "checkout_create"
    get "success", to: "checkout#success", as: "checkout_success"
    get "cancel", to: "checkout#cancel", as: "checkout_cancel"
  end

  root to: 'products#index'
  get '/search' => 'pages#search', :as => 'search_page'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
