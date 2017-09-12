class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |column|
      column.string :name
      column.string :department
      column.integer :cost
    end
  end
end
