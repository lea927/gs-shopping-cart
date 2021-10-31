class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to products_path
    end
  end

  def destroy
  end

  private

  def order_params
    params.permit(:name, :price)
  end
end
