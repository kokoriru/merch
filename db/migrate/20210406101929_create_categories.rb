class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :sequence
      t.belongs_to :title, foreign_key: { to_table: :parent_categories }

      t.timestamps
    end
  end
end
