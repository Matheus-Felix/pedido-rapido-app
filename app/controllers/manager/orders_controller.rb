# frozen_string_literal: true

# The Manager namespace
module Manager
  # The OrdersController
  class OrdersController < BaseController
    def index
      @orders_open = open_orders
      @orders_preparing = preparing_orders
      @orders_done = done_orders
      @orders_canceled = canceled_orders

      @orders_status = order_status
    end

    def create; end

    def edit
    end

    def update
      order = ProductOrder.find(params[:id])
      order.status = order_status_params

      order.save!
    end

    private

    def open_orders
      ProductOrder.per_status(0)
    end

    def preparing_orders
      ProductOrder.per_status(1)
    end

    def done_orders
      ProductOrder.per_status(2)
    end

    def canceled_orders
      ProductOrder.per_status(3)
    end

    def order_status_params
      order_params = params.require(:order).permit(:status)

      order_params[:status] = params[:order][:status].to_i
    end

    def order_status
      @order_status ||= ProductOrder.statuses
    end
    helper_method :order_status
  end
end
