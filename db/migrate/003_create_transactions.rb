class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |column|
      column.integer :business_day_id
      column.string :client
      column.integer :product_id
    end
  end
end
