require "application_system_test_case"

class SalesRecordsTest < ApplicationSystemTestCase
  setup do
    @sales_record = sales_records(:one)
  end

  test "visiting the index" do
    visit sales_records_url
    assert_selector "h1", text: "Sales records"
  end

  test "should create sales record" do
    visit sales_records_url
    click_on "New sales record"

    fill_in "Items sold", with: @sales_record.items_sold
    fill_in "Project hours", with: @sales_record.project_hours
    fill_in "Sales floor hours", with: @sales_record.sales_floor_hours
    fill_in "Sales person", with: @sales_record.sales_person_id
    fill_in "Sell date", with: @sales_record.sell_date
    fill_in "Total", with: @sales_record.total
    click_on "Create Sales record"

    assert_text "Sales record was successfully created"
    click_on "Back"
  end

  test "should update Sales record" do
    visit sales_record_url(@sales_record)
    click_on "Edit this sales record", match: :first

    fill_in "Items sold", with: @sales_record.items_sold
    fill_in "Project hours", with: @sales_record.project_hours
    fill_in "Sales floor hours", with: @sales_record.sales_floor_hours
    fill_in "Sales person", with: @sales_record.sales_person_id
    fill_in "Sell date", with: @sales_record.sell_date
    fill_in "Total", with: @sales_record.total
    click_on "Update Sales record"

    assert_text "Sales record was successfully updated"
    click_on "Back"
  end

  test "should destroy Sales record" do
    visit sales_record_url(@sales_record)
    click_on "Destroy this sales record", match: :first

    assert_text "Sales record was successfully destroyed"
  end
end
