class Category < ActiveRecord::Base

  has_many :categorize_products

  has_many :products, through: :categorize_products

end
