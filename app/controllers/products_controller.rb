class ProductsController < ApplicationController

  def one
    @products = Product.first
   end 

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])  
  end

  def new   
  end

  def create
    @product= Product.create({name: params[:name], image: params[:image], price: params[:price], description: params[:description]})
  end

  
end
