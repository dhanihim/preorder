require "application_system_test_case"

class ScheduledItemsTest < ApplicationSystemTestCase
  setup do
    @scheduled_item = scheduled_items(:one)
  end

  test "visiting the index" do
    visit scheduled_items_url
    assert_selector "h1", text: "Scheduled Items"
  end

  test "creating a Scheduled item" do
    visit scheduled_items_url
    click_on "New Scheduled Item"

    fill_in "Current cost", with: @scheduled_item.current_cost
    fill_in "Current price", with: @scheduled_item.current_price
    fill_in "Description", with: @scheduled_item.description
    click_on "Create Scheduled item"

    assert_text "Scheduled item was successfully created"
    click_on "Back"
  end

  test "updating a Scheduled item" do
    visit scheduled_items_url
    click_on "Edit", match: :first

    fill_in "Current cost", with: @scheduled_item.current_cost
    fill_in "Current price", with: @scheduled_item.current_price
    fill_in "Description", with: @scheduled_item.description
    click_on "Update Scheduled item"

    assert_text "Scheduled item was successfully updated"
    click_on "Back"
  end

  test "destroying a Scheduled item" do
    visit scheduled_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scheduled item was successfully destroyed"
  end
end
