class Product < ApplicationRecord
  validates :name, :quantity, :price, presence:true
  validates :quantity, :price, numericality:true
  has_many :ProductOrders
end
