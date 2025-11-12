class AddDefaultValuesToSalesFloorHoursAndProjectHours < ActiveRecord::Migration[7.0]
  def change
    change_column :sales_records, :sales_floor_hours, :decimal, default: 1
    change_column :sales_records, :project_hours, :decimal, default: 0
  end
end