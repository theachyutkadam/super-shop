class AddColumnToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :quntity, :float
    add_column :products, :remain_quntiry, :float
  end
end
