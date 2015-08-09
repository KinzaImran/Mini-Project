class Customer < ActiveRecord::Base
has_many :orders
validates :c_id, numericality: true
validates :name, presence: true, uniqueness: true, length: { maximum: 30 } 
validates :company_name, presence: true, uniqueness: true, length: { maximum: 50 }
end
