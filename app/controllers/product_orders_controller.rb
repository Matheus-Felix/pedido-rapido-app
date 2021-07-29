class ProductOrdersController < ApplicationController
  before_action :load_product_order, only: [:update, :destroy, :show]

  def index
    @product_orders = product_order.all
  end

  def show
  end

  def create
    @product_order = product_order.new
    @product_order.attributes = product_order_params
    save_product_order
  end

  def update
    @product_order.attributes = product_order_params
    save_product_order!
  end

  def destroy
    @product_order.destroy!    
  end

  private

  def load_product_order
    @product_order = product_order.find(params[:id])
   end
  

  def save_product_order
    @product_order.save
  end

  def product_order_params
    return {} unless params.has_key?(:product_order)
    params.require(:product_order).permit(:name)
   end
  end