class CartedProductsController < ApplicationController
  
  def index
    if user_signed_in? && current_user.carted_products.where(status: "Carted").any?
      @carted_products = current_user.carted_products.where(status: "Carted")
    else
      flash[:warning] = "Cart is empty."
      redirect_to "/"
  end
end

  def create
    CartedProduct.create(product_id: params[:product_id], quantity: params[:quantity], user_id: current_user.id, status: "Carted") 
      flash[:success] = "Added a product to your cart."
    redirect_to "/carted_products"
  end

  def edit
    @carted_product = CartedProduct.find(params[:id])
  end

  def update
    @carted_product = CartedProduct.find(params[:id])

    @carted_product = CartedProduct.create {[quantity: params[:quantity], product_id: params[:product_id], user_id: params[:user_id]
      ]}
      flash[success] = "Cart Updated"
      redirect_to "/products"
    
  end

  def remove
    @carted_product = CartedProduct.find(params[:id])

    @carted_product.status = "remove"
    
      flash[success] = "Product Removed"


      redirect_to "/carted_products"

  end

end
