class Product < ActiveRecord::Base


  def sale_notice
    cost = price.to_i
    if cost < 2
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  def tax
    tax = (price.to_f * 0.09).round(2)
  end

  # def tax
  #   price * 0.09
  # end

  def total
    total = (price.to_f * 0.09).round(2) + price.to_f 
  end

  # def total
  #   price + tax
  # end
  
end
