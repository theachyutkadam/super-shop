class AddSoftDeleteToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :is_delete, :boolean, default: false
  end
end
