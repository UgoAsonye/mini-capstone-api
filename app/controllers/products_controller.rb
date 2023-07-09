class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def pan
    product = Product.first
    render json: product.as_json
  end

  def pot
    product = Product.second
    render json: product.as_json
  end

  def spatula
    product = Product.third
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

  def create
    product = Product.create(
      # name: "Cast Iron Wok",
      # price: 65,
      # image_url: "https://secure.lodgecastiron.com/on/demandware.static/-/Sites-www-lodge-com/default/dw1e15445e/images/L14W/L14W_14-Inch-Wok_Whitetable1_800x800_WEB.jpg",
      # description: "A cast iron wok, careful it gets hot!",
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])
    product.update(
      name: params["name"] || product.name,
      price: params["price"] || product.price,
      image_url: params["image_url"] || product.image_url,
      description: params["description"] || product.description,
    )
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product has been eliminated" }
  end
end
