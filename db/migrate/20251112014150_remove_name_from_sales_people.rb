class RemoveNameFromSalesPeople < ActiveRecord::Migration[7.0]
  def change
    remove_column :sales_people, :name, :string
  end
end
