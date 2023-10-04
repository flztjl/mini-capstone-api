class Category < ApplicationRecord
  has_many :category_products
  has_many :category_products through: :category_products
end
