class Warehouse < ActiveRecord::Base
has_many:products
validates :product_name, presence: true, uniqueness: true, length: { maximum: 30 }
validates :stock, numericality: true
end
