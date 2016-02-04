class Order < ActiveRecord::Base
  
  validates: user_id: numericality: true
  validates: subtotal: numericality: true
  validates: subtotal: numericality: {greater_than: 0}

  validates: tax: numericality: true
  validates: subtotal: numericality: true
  validates: subtotal: numericality: {greater_than: 0}


  belongs_to :user

  has_many :carted_products
  has_many :products, through:  :carted_products

  def calculate_totals

    subtotal = 0

     carted_products.each do |carted_product|
        subtotal += carted_product.product.price
     end

    tax = subtotal * 0.09
    total = subtotal + tax
 
    update(subtotal: subtotal, tax: tax, total: total)
  end
end


