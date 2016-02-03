class User < ActiveRecord::Base
  
  has_many :carted_products
  has_many :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
