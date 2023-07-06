class ProductsController < ApplicationController
  def all_products
    product = Product.all
    render json: products.as_json
  end
end
