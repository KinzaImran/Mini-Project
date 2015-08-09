class Order < ActiveRecord::Base
has_many :order_details
belongs_to :customer
validates :c_id, numericality: true
end
