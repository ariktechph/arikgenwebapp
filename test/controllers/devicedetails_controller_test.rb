require "test_helper"

class DevicedetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devicedetail = devicedetails(:one)
  end

  test "should get index" do
    get devicedetails_url
    assert_response :success
  end

  test "should get new" do
    get new_devicedetail_url
    assert_response :success
  end

  test "should create devicedetail" do
    assert_difference('Devicedetail.count') do
      post devicedetails_url, params: { devicedetail: { battery: @devicedetail.battery, brand: @devicedetail.brand, built_in_mem: @devicedetail.built_in_mem, chipset: @devicedetail.chipset, device_type: @devicedetail.device_type, imei: @devicedetail.imei, model: @devicedetail.model, op_sys: @devicedetail.op_sys, ram: @devicedetail.ram } }
    end

    assert_redirected_to devicedetail_url(Devicedetail.last)
  end

  test "should show devicedetail" do
    get devicedetail_url(@devicedetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_devicedetail_url(@devicedetail)
    assert_response :success
  end

  test "should update devicedetail" do
    patch devicedetail_url(@devicedetail), params: { devicedetail: { battery: @devicedetail.battery, brand: @devicedetail.brand, built_in_mem: @devicedetail.built_in_mem, chipset: @devicedetail.chipset, device_type: @devicedetail.device_type, imei: @devicedetail.imei, model: @devicedetail.model, op_sys: @devicedetail.op_sys, ram: @devicedetail.ram } }
    assert_redirected_to devicedetail_url(@devicedetail)
  end

  test "should destroy devicedetail" do
    assert_difference('Devicedetail.count', -1) do
      delete devicedetail_url(@devicedetail)
    end

    assert_redirected_to devicedetails_url
  end
end
