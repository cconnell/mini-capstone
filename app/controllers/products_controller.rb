class ProductsController < ApplicationController

  def one
    @product = Product.first
   end 

  def store
    @products = Product.all
  end

end
