require "application_system_test_case"

class VendorProductsTest < ApplicationSystemTestCase
  setup do
    @vendor_product = vendor_products(:one)
  end

  test "visiting the index" do
    visit vendor_products_url
    assert_selector "h1", text: "Vendor Products"
  end

  test "creating a Vendor product" do
    visit vendor_products_url
    click_on "New Vendor Product"

    fill_in "Producttype", with: @vendor_product.producttype
    click_on "Create Vendor product"

    assert_text "Vendor product was successfully created"
    click_on "Back"
  end

  test "updating a Vendor product" do
    visit vendor_products_url
    click_on "Edit", match: :first

    fill_in "Producttype", with: @vendor_product.producttype
    click_on "Update Vendor product"

    assert_text "Vendor product was successfully updated"
    click_on "Back"
  end

  test "destroying a Vendor product" do
    visit vendor_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vendor product was successfully destroyed"
  end
end
