class CreateProduct < ActiveRecord::Migration[5.0]
  def change
     create_table(:product) do |column|
       column.string :name
       column.string :department
       column.integer :trans_id
       column.integer :cost

       column.timestamps

     end
   end
 end
