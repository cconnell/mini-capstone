class CartedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  def name
    product.name
  end

  def id
    product.id
  end

  def image
    product.images.first.url
  end
  
  def price
    product.price
  end
end
