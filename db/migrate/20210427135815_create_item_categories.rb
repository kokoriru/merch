class CreateItemCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :item_categories do |t|
      t.string :name
      t.integer :sequence

      t.timestamps
    end
  end
end
