class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :manufacturer
      t.string :name
      t.integer :status
      t.boolean :made_to_order, default: false, null: false
      t.datetime :started_at
      t.datetime :ended_at
      t.datetime :reserved_at
      t.string :scheduled_arrival
      t.string :url
      t.string :note

      t.timestamps
    end
  end
end
