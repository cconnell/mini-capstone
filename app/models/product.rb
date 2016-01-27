class Product < ActiveRecord::Base

  belongs_to :supplier
  belongs_to :images

  def sale_notice
    if price < 2
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  # def tax
  #   tax = (price.to_f * 0.09).round(2)
  # end

  def tax
    price * 0.09
  end

  # def total
  #   total = (price.to_f * 0.09).round(2) + price.to_f 
  # end

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

end
