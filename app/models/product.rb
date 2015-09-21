class Product < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :category
  belongs_to :warehouse
  has_many :order_details
  validates :supplier_id, numericality: true
  validates :category_id, numericality: true
validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
validates :price, numericality: true
end
