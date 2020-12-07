class Product < ApplicationRecord
  validates :name, :quantity, :price, presence: true
  validates :quantity, :price, numericality: true
  has_many :product_orders, dependent: :destroy
  has_one_attached :image

  has_many :product_categories, dependent: :restrict_with_exception
  has_many :categories, through: :product_categories
  accepts_nested_attributes_for :product_categories, allow_destroy: true
end
