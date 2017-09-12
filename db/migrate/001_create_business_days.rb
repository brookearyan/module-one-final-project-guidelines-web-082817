class CreateBusinessDays < ActiveRecord::Migration[5.1]
  def change
    create_table :business_days do |column|
      column.string :date
    end
  end
end
