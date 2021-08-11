class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :contact
      t.date :birthdate
      t.string :gender
      t.text :address

      t.timestamps
    end
  end
end
