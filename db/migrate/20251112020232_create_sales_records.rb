class CreateSalesRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_records do |t|
      t.date :sell_date
      t.integer :amount_sold
      t.integer :items_sold
      t.decimal :sales_floor_hours
      t.decimal :project_hours
      t.references :sales_person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
