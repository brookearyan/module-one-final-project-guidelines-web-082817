class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
     create_table(:transactions) do |column|
       column.integer :date
       column.string :client

       column.timestamps

     end
   end
 end
