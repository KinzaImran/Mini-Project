class Supplier < ActiveRecord::Base
has_many :products
validates :s_id, numericality: true
validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
validates :company_name, presence: true, uniqueness: true, length: { maximum: 50 }
end
