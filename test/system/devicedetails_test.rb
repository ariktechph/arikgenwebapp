require "application_system_test_case"

class DevicedetailsTest < ApplicationSystemTestCase
  setup do
    @devicedetail = devicedetails(:one)
  end

  test "visiting the index" do
    visit devicedetails_url
    assert_selector "h1", text: "Devicedetails"
  end

  test "creating a Devicedetail" do
    visit devicedetails_url
    click_on "New Devicedetail"

    fill_in "Battery", with: @devicedetail.battery
    fill_in "Brand", with: @devicedetail.brand
    fill_in "Built in mem", with: @devicedetail.built_in_mem
    fill_in "Chipset", with: @devicedetail.chipset
    fill_in "Device type", with: @devicedetail.device_type
    fill_in "Imei", with: @devicedetail.imei
    fill_in "Model", with: @devicedetail.model
    fill_in "Op sys", with: @devicedetail.op_sys
    fill_in "Ram", with: @devicedetail.ram
    click_on "Create Devicedetail"

    assert_text "Devicedetail was successfully created"
    click_on "Back"
  end

  test "updating a Devicedetail" do
    visit devicedetails_url
    click_on "Edit", match: :first

    fill_in "Battery", with: @devicedetail.battery
    fill_in "Brand", with: @devicedetail.brand
    fill_in "Built in mem", with: @devicedetail.built_in_mem
    fill_in "Chipset", with: @devicedetail.chipset
    fill_in "Device type", with: @devicedetail.device_type
    fill_in "Imei", with: @devicedetail.imei
    fill_in "Model", with: @devicedetail.model
    fill_in "Op sys", with: @devicedetail.op_sys
    fill_in "Ram", with: @devicedetail.ram
    click_on "Update Devicedetail"

    assert_text "Devicedetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Devicedetail" do
    visit devicedetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Devicedetail was successfully destroyed"
  end
end
