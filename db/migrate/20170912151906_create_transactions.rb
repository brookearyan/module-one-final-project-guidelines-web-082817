class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
     create_table(:transactions) do |t|
       t.string :client_name
       t.integer :business_day_id
       t.integer :string

       t.timestamps

     end
   end
 end
