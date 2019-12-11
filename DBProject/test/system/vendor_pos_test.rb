require "application_system_test_case"

class VendorPosTest < ApplicationSystemTestCase
  setup do
    @vendor_po = vendor_pos(:one)
  end

  test "visiting the index" do
    visit vendor_pos_url
    assert_selector "h1", text: "Vendor Pos"
  end

  test "creating a Vendor pos" do
    visit vendor_pos_url
    click_on "New Vendor Pos"

    fill_in "Purchaseorder", with: @vendor_po.PurchaseOrder
    click_on "Create Vendor pos"

    assert_text "Vendor pos was successfully created"
    click_on "Back"
  end

  test "updating a Vendor pos" do
    visit vendor_pos_url
    click_on "Edit", match: :first

    fill_in "Purchaseorder", with: @vendor_po.PurchaseOrder
    click_on "Update Vendor pos"

    assert_text "Vendor pos was successfully updated"
    click_on "Back"
  end

  test "destroying a Vendor pos" do
    visit vendor_pos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vendor pos was successfully destroyed"
  end
end
