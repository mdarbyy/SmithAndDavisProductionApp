require "test_helper"

class SalesRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_record = sales_records(:one)
  end

  test "should get index" do
    get sales_records_url
    assert_response :success
  end

  test "should get new" do
    get new_sales_record_url
    assert_response :success
  end

  test "should create sales_record" do
    assert_difference("SalesRecord.count") do
      post sales_records_url, params: { sales_record: { items_sold: @sales_record.items_sold, project_hours: @sales_record.project_hours, sales_floor_hours: @sales_record.sales_floor_hours, sales_person_id: @sales_record.sales_person_id, sell_date: @sales_record.sell_date, total: @sales_record.total } }
    end

    assert_redirected_to sales_record_url(SalesRecord.last)
  end

  test "should show sales_record" do
    get sales_record_url(@sales_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_sales_record_url(@sales_record)
    assert_response :success
  end

  test "should update sales_record" do
    patch sales_record_url(@sales_record), params: { sales_record: { items_sold: @sales_record.items_sold, project_hours: @sales_record.project_hours, sales_floor_hours: @sales_record.sales_floor_hours, sales_person_id: @sales_record.sales_person_id, sell_date: @sales_record.sell_date, total: @sales_record.total } }
    assert_redirected_to sales_record_url(@sales_record)
  end

  test "should destroy sales_record" do
    assert_difference("SalesRecord.count", -1) do
      delete sales_record_url(@sales_record)
    end

    assert_redirected_to sales_records_url
  end
end
