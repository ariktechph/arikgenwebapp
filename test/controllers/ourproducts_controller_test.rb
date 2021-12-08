require "test_helper"

class OurproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ourproduct = ourproducts(:one)
  end

  test "should get index" do
    get ourproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_ourproduct_url
    assert_response :success
  end

  test "should create ourproduct" do
    assert_difference('Ourproduct.count') do
      post ourproducts_url, params: { ourproduct: { prod_description: @ourproduct.prod_description, prod_image: @ourproduct.prod_image, prod_name: @ourproduct.prod_name, prod_price: @ourproduct.prod_price } }
    end

    assert_redirected_to ourproduct_url(Ourproduct.last)
  end

  test "should show ourproduct" do
    get ourproduct_url(@ourproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_ourproduct_url(@ourproduct)
    assert_response :success
  end

  test "should update ourproduct" do
    patch ourproduct_url(@ourproduct), params: { ourproduct: { prod_description: @ourproduct.prod_description, prod_image: @ourproduct.prod_image, prod_name: @ourproduct.prod_name, prod_price: @ourproduct.prod_price } }
    assert_redirected_to ourproduct_url(@ourproduct)
  end

  test "should destroy ourproduct" do
    assert_difference('Ourproduct.count', -1) do
      delete ourproduct_url(@ourproduct)
    end

    assert_redirected_to ourproducts_url
  end
end
