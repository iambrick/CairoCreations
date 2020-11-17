class Order < ApplicationRecord
  validates :customer_id, :status, :created_at, presence:true
  has_one :customer
end
