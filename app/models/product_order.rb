class ProductOrder < ApplicationRecord
  validates :product_price, :quantity, presence: true
  belongs_to :product
  belongs_to :order
end
