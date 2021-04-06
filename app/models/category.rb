class Category < ApplicationRecord
  belongs_to :parent, class_name: 'ParentCategory', foreign_key: :parent_id
end
