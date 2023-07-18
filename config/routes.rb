Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/pan" => "products#pan"
  get "/pot" => "products#pot"
  get "/spatula" => "products#spatula"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  post "/users" => "users#create"
end
