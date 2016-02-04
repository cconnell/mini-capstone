class CartedProduct < ActiveRecord::Base
  
  belongs_to :product
  belongs_to :order
  belongs_to :user

  def subtotal
    price * quantity
  end

end
