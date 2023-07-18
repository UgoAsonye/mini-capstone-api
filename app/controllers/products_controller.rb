class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.create(
      # name: "Cast Iron Wok",
      # price: 65,
      # image_url: "https://secure.lodgecastiron.com/on/demandware.static/-/Sites-www-lodge-com/default/dw1e15445e/images/L14W/L14W_14-Inch-Wok_Whitetable1_800x800_WEB.jpg",
      # description: "A cast iron wok, careful it gets hot!",
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params[:supplier_id],
    )
    render template: "products/show"
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
      supplier_id: params[:supplier_id] || @product.supplier_id,
    )
    render template: "products/show"
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product has been eliminated" }
  end
end
