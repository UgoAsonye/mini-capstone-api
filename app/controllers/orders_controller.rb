class OrdersController < ApplicationController
  def create
    if current_user
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
    else
      render json: [], status: unauthorized
    end
  end

  def show
    if current_user
      @order = current_user.orders.find_by(id: params[:id])
    else
      render json: [], status: unauthorized
    end
    if @order
      render :show
    else
      render json: { error: "Not for you!" }
    end
  end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    else
      render json: [], status: unauthorized
    end
  end
end
