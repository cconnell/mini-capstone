class OrdersController < ApplicationController
  def create
   product= Product.find(params[:product_id]).price

    @order= Order.new({
                              quantity: params[:quantity],
                              product_id: params[:product_id],
                              user_id: current_user.id})


    @order.subtotal = @order.calc_subtotal(price)
    @order.tax = @order.calc_tax(0.09)
    @order.total = @order.calc_total

    @order.save

    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])

    flash[:success] = "Order Confirmed"
  end



end
