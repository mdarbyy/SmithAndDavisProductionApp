class AddFirstNameAndLastNameToSalesPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :sales_people, :first_name, :string
    add_column :sales_people, :last_name, :string
  end
end
