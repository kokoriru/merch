class ParentCategory < ApplicationRecord
  has_many :categories, foreign_key: :title_id, dependent: :destroy
end
