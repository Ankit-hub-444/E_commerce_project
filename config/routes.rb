Rails.application.routes.draw do
  root "products#index"

  get "/product" ,to: "products#show_all"
  get "/product/:id", to: "products#show_one"
  delete "/product/:id", to: "products#delete_one"
  post "/product", to: "products#add"
  put "/product/:id",to: "products#edit"
  get "/signup",  to:"users#index"
  get "/signup/new", to: "users#new"
  post "/signup", to: "users#create"
get "/login/new", to: "sessions#new"
get "/login",  to:"sessions#index"
post "/login", to: "sessions#create"
delete "/logout", to: "sessions#destroy"
# resources :users, except: [:new]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
