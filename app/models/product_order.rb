class ProductOrder < ApplicationRecord
  validates :product_price, :quantity, presence:true
  belongs_to :Product
  belongs_to :Order
end
