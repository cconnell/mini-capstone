class Supplier < ActiveRecord::Base

validates: supplier_id: numericality: {only_integer: true}

has_many :products

end
