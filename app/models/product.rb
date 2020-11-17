class Product < ApplicationRecord
  validates :name, :quantity, :price, presence:true
  validates :quantity, :price, greater_than_or_equal_to:0
  validates :quantity, :price, is_numeric:true
end
