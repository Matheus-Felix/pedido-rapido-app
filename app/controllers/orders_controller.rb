# frozen_string_literal: true

# OrdersController
class OrdersController < ApplicationController

  before_action :load_order, only: %i[update destroy show]

  def index
    @orders = Order.all
  end

  def show; end

  def create
    @order = Order.new
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
    @order = Order.find(params[:id])
  end

  def save_order
    @order.save
  end

  def order_params
    return {} unless params.has_key?(:order)

    params.require(:order).permit(:name)
  end
end
