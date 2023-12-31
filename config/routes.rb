Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  get 'user/:id', to: "users#show", as: 'user'
end
