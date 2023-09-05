Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"

  post "/suppliers" => "suppliers#create"
  post "/products" => "products#create"

  patch "/products/:id" => "products#update"
  patch "/suppliers/:id" => "suppliers#update"

  delete "/products/:id" => "products#destroy"
  delete "/suppliers/:id" => "suppliers#destroy"
end
