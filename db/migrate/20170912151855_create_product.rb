class CreateProduct < ActiveRecord::Migration[5.0]
  def change
     create_table(:product) do |t|
       t.string :name
       t.integer :cost
       t.integer :trans_id
       t.string :department

       t.timestamps

     end
   end
 end
