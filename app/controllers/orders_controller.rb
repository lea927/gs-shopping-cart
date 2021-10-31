class OrdersController < ApplicationController
  before_action :set_order, only: [:destroy,:show]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show

  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to products_path
    end
  end

  def destroy
    @order.destroy
    redirect_to products_path
  end

  private

  def order_params
    params.permit(:name, :price)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
