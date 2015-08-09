class OrderDetail < ActiveRecord::Base
 belongs_to :product
 belongs_to :order
 validates :price, numericality: true
 validates :quantity, numericality: true
 validates :discount, numericality: true
end
