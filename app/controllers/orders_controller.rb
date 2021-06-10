class OrdersController < ApplicationController
  before_action :find_order, only: [:show]
  before_action :authenticate_user!, only: [:destroy, :index]
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(set_orders)
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show
    @item = Item.new
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end

  def set_orders
    params.require(:order).permit(:name, :email, :phone)
  end
end
