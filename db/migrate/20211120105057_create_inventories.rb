class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.references :product, foreign_key: true
      t.integer :measure
      t.integer :quntity
      t.float :price

      t.timestamps
    end
  end
end
