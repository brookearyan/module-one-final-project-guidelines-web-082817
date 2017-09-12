class CreateBusinessDay < ActiveRecord::Migration[5.0]
  def change
     create_table(:business_day) do |t|
       t.string :date

       t.timestamps

     end
   end
 end
