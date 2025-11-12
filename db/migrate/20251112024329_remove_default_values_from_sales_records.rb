class RemoveDefaultValuesFromSalesRecords < ActiveRecord::Migration[7.0]
  def change
    change_column_default :sales_records, :sales_floor_hours, from: 1, to: nil
    change_column_default :sales_records, :items_sold, from: 1, to: nil
  end
end
