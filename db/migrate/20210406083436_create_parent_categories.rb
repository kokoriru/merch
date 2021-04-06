class CreateParentCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :parent_categories do |t|
      t.string :name
      t.integer :sequence

      t.timestamps
    end
  end
end
