class OrdersController < ApplicationController
  before_action :load_order, only: [:update, :destroy, :show]

  def index
    @orders = order.all
  end

  def show
  end

  def create
    @order = order.new
    @order.attributes = order_params
    save_order
  end

  def update
    @order.attributes = order_params
    save_order!
  end

  def destroy
    @order.destroy!    
  end

  private

  def load_order
    @order = order.find(params[:id])
   end
  

  def save_order
    @order.save
  end

  def order_params
    return {} unless params.has_key?(:order)
    params.require(:order).permit(:name)
   end
  end