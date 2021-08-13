class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :product, foreign_key: true
      t.references :customer, foreign_key: true
      t.float :price
      t.float :unit

      t.timestamps
    end
  end
end
