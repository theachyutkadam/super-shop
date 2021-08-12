class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :measure
      t.float :rate
      t.integer :code
      t.integer :category
      t.integer :discount

      t.timestamps
    end
  end
end
