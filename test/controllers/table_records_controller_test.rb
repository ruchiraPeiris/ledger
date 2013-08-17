require 'test_helper'

class TableRecordsControllerTest < ActionController::TestCase
  setup do
    @table_record = table_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_record" do
    assert_difference('TableRecord.count') do
      post :create, table_record: { date: @table_record.date, description: @table_record.description, value: @table_record.value }
    end

    assert_redirected_to table_record_path(assigns(:table_record))
  end

  test "should show table_record" do
    get :show, id: @table_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table_record
    assert_response :success
  end

  test "should update table_record" do
    patch :update, id: @table_record, table_record: { date: @table_record.date, description: @table_record.description, value: @table_record.value }
    assert_redirected_to table_record_path(assigns(:table_record))
  end

  test "should destroy table_record" do
    assert_difference('TableRecord.count', -1) do
      delete :destroy, id: @table_record
    end

    assert_redirected_to table_records_path
  end
end
