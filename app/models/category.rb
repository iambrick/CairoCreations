class Category < ApplicationRecord
  validates :name, presence: true
  validates :name, unique: true

  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
end
