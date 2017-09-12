 class CreateBusinessDay < ActiveRecord::Migration[5.0]
   def change
      create_table(:business_day) do |column|
        column.string :date

        column.timestamps

      end
    end
  end
