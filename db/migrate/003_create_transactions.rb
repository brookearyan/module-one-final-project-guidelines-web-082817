class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |column|
      column.integer :date
      column.string :client
      column.integer :product_id
      column.integer :product_id_2
      column.integer :product_id_3
    end
  end
end
