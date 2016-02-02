class CartedProductsController < ApplicationController

  def
  def index
    @carted_product = CartedProducts.all
  end

  def create
    @carted_product = CartedProduct.create ({quantity: params[:quantity], product_id: params[:product_id], user_id: current_user.id, status: "carted"})
      
    flash[:success] = "Added to cart"

      redirect_to "/products"
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
