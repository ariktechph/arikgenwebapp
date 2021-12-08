require "application_system_test_case"

class OurproductsTest < ApplicationSystemTestCase
  setup do
    @ourproduct = ourproducts(:one)
  end

  test "visiting the index" do
    visit ourproducts_url
    assert_selector "h1", text: "Ourproducts"
  end

  test "creating a Ourproduct" do
    visit ourproducts_url
    click_on "New Ourproduct"

    fill_in "Prod description", with: @ourproduct.prod_description
    fill_in "Prod image", with: @ourproduct.prod_image
    fill_in "Prod name", with: @ourproduct.prod_name
    fill_in "Prod price", with: @ourproduct.prod_price
    click_on "Create Ourproduct"

    assert_text "Ourproduct was successfully created"
    click_on "Back"
  end

  test "updating a Ourproduct" do
    visit ourproducts_url
    click_on "Edit", match: :first

    fill_in "Prod description", with: @ourproduct.prod_description
    fill_in "Prod image", with: @ourproduct.prod_image
    fill_in "Prod name", with: @ourproduct.prod_name
    fill_in "Prod price", with: @ourproduct.prod_price
    click_on "Update Ourproduct"

    assert_text "Ourproduct was successfully updated"
    click_on "Back"
  end

  test "destroying a Ourproduct" do
    visit ourproducts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ourproduct was successfully destroyed"
  end
end
