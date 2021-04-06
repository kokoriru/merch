class Category < ApplicationRecord
  belongs_to :parent, class_name: 'ParentCategory', foreign_key: :parent_id

  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
end
