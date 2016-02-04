class ProductsController < ApplicationController

    before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def one
    @products = Product.last
   end 

  def index

    @products = Product.all

      if params[:sort] && params[:sort_order]
        @products = @products.order(params[:sort] => params[:sort_order])
      end
      if params[:discount]
        @products = @products.where("price <= ?", params[:discount])
      end
      if params[:category]
        @products = Category.find_by(name: params[:category]).products
      end
  end

  def show
    @product = Product.find(params[:id]) 

  end

  def new
  end

  def create


    @product= Product.create({
                              name: params[:name], price: params[:price], supplier_id: params[:supplier_id], description: params[:description]
                              })
  
  Image.create(url: params[:image], product_id: @product.id) if params[:image] != ""

  flash[:success] = "New product created"

  redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update 
    @product = Product.find(params[:id])

    @product.update({
                              name: params[:name], image: params[:image], price: params[:price], description: params[:description]
                              })
    image.create(url: params[:image], product_id: @product.id) if params[:image] != ""
    
    redirect_to "/"
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy  

    flash[:success] = "you did such a great job destroying that product"
    flash[:warning] = "Product destroyed!"
    redirect_to "/"
  end
  
  def random
    @product = Product.all.sample
    render :show
  end

  def search
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")

    render :index
  end

end
