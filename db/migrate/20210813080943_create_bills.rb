class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.references :customer, foreign_key: true
      t.references :cart, foreign_key: true
      t.float :total
      t.integer :payment_type
      t.float :recieve

      t.timestamps
    end
  end
end
