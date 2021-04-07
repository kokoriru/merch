class Product < ApplicationRecord
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  enum status: %w[未定 購入予定 購入済 購入しない]
end
