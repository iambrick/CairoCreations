class Category < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :products, through: :product_categories
  has_many :products
end