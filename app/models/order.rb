class Order < ApplicationRecord
  validates :customer_id, :status, presence: true
  belongs_to :customer
  has_many :product_orders, dependent: :restrict_with_exception
  has_many :products, through: :product_orders
end
