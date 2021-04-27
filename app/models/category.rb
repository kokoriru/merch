class Category < ApplicationRecord
  belongs_to :title, class_name: 'ParentCategory', foreign_key: :title_id

  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
end
