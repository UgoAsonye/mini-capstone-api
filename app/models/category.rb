class Category < ApplicationRecord
  has_many :CategoryProducts
  has_many :products, through: :category_products
end
