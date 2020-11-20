class Product < ApplicationRecord
  validates :name, :quantity, :price, presence:true
  validates :quantity, :price, numericality:true
  has_many :product_orders
  has_one_attached :image
  has_many :categories, through: :product_categories
  has_many :categories
end
