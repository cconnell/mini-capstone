class Order < ActiveRecord::Base
  has_many :products, through: :carted_products
  belongs_to :user
  belongs_to :product

  def calc_subtotal(price)
    quantity * product.price
  end

  def calc_tax(tax_rate)
    subtotal * tax_rate
  end

  def calc_total
    subtotal + tax
  end

  def name
    product.name
  end

  def get_the_first_image
    if images.first
      images.first.url 
    else
      Image.first.url
    end
  end
end


