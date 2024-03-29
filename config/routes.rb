Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  resources :prototypes do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: :show
end
