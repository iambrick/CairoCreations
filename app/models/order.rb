class Order < ApplicationRecord
  validates :customer_id, :status, presence:true
  belongs_to :customer
  has_many :product_orders
  has_many :products, through: :product_orders
end
