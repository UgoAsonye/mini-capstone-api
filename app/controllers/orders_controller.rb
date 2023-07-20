class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price

    subtotal = price * params[:quantity].to_i
    tax = 0.09 * subtotal
    total = subtotal + tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total,
    )
    if @order.valid?
      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def show
    @order = current_user.orders.find_by(
      id: params["id"],
    )
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
