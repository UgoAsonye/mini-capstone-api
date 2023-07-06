Rails.application.routes.draw do
  get "/all_products" => "products#all_products"
  get "/Pan" => "products#Pan"
  get "/Pot" => "products#Pot"
  get "/Spatula" => "products#Spatula"
end
