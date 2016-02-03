class OrdersController < ApplicationController
  

  def create
   careted_products = current_user.careted_products.where(status: "Carted")

   subtotal = 0

   carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
   end

   tax = subtotal * 0.09
   total = subtotal + tax

   order = Order.create(user_id: current_user.id, subtotal: subtotal, tax: tax, total: total)

   carted_products.each do |carted_product|
    carted_product.update(order_id: order.id, status: "Purchased")
  end

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])

    flash[:success] = "Order Confirmed"
  end



end
