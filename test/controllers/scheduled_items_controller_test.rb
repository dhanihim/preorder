require "test_helper"

class ScheduledItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheduled_item = scheduled_items(:one)
  end

  test "should get index" do
    get scheduled_items_url
    assert_response :success
  end

  test "should get new" do
    get new_scheduled_item_url
    assert_response :success
  end

  test "should create scheduled_item" do
    assert_difference('ScheduledItem.count') do
      post scheduled_items_url, params: { scheduled_item: { current_cost: @scheduled_item.current_cost, current_price: @scheduled_item.current_price, description: @scheduled_item.description } }
    end

    assert_redirected_to scheduled_item_url(ScheduledItem.last)
  end

  test "should show scheduled_item" do
    get scheduled_item_url(@scheduled_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_scheduled_item_url(@scheduled_item)
    assert_response :success
  end

  test "should update scheduled_item" do
    patch scheduled_item_url(@scheduled_item), params: { scheduled_item: { current_cost: @scheduled_item.current_cost, current_price: @scheduled_item.current_price, description: @scheduled_item.description } }
    assert_redirected_to scheduled_item_url(@scheduled_item)
  end

  test "should destroy scheduled_item" do
    assert_difference('ScheduledItem.count', -1) do
      delete scheduled_item_url(@scheduled_item)
    end

    assert_redirected_to scheduled_items_url
  end
end
