class Order < ApplicationRecord
  validates :customer_id, :status, :created_at, presence:true
  belongs_to :customer
  has_many :ProductOrders
end
