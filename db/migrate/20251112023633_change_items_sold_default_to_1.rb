class ChangeItemsSoldDefaultTo1 < ActiveRecord::Migration[7.0]
  def change
    change_column :sales_records, :items_sold, :integer, default: 1
  end
end
