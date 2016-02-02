class Product < ActiveRecord::Base
  has_many :orders, through: :carted_products
  belongs_to :supplier
  has_many :images
  has_many :categorize_products
  has_many :categories, through: :categorize_products

  def sale_notice
    if price < 2
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
  
  def stock_status
    if stock == 
      "false"
    else
      "true"
    end
  end

  def get_the_first_image
    if images.first
      images.first.url 
    else
      Image.first.url
    end
  end

end
