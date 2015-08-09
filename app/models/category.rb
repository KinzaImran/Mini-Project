class Category < ActiveRecord::Base
has_many :products
validates :c_id, numericality: true
end
