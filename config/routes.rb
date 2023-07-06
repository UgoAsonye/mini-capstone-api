Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/all_products" => "products#all_products"
  get "/Pan" => "products#Pan"
  get "/Pot" => "products#Pot"
  get "/Spatula" => "products#Spatula"
end
