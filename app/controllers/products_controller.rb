class ProductsController < ApplicationController

  def one
    @products = Product.last
   end 

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])  
  end

  def new  

  end

  def create
    @product= Product.create({
                              name: params[:name], image: params[:image], price: params[:price], description: params[:description]})
  flash[:success] = "New product created"

  redirect_to "/"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update 
    @product = Product.find(params[:id])

    @product.update({
                              name: params[:name], image: params[:image], price: params[:price], description: params[:description]
                              })

    redirect_to "/"
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy  

    flash[:success] = "you did such a great job destroying that product"
    flash[:warning] = "Product destroyed!"
    redirect_to "/"
  end
  
end
