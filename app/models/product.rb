class Product < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :category
  has_many :order_details
  validates :s_id, numericality: true
  validates :c_id, numericality: true
validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
validates :price, numericality: true
end
