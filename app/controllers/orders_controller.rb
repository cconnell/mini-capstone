class OrdersController < ApplicationController
  def create
    @order= Order.create({
                              quantity: params[:quantity]
                              })

    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    flash[:success] = "Order Confirmed"
  end
end
