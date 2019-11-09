require 'test_helper'

class VendorPOsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor_po = vendor_pos(:one)
  end

  test "should get index" do
    get vendor_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_po_url
    assert_response :success
  end

  test "should create vendor_po" do
    assert_difference('VendorPo.count') do
      post vendor_pos_url, params: { vendor_po: { PurchaseOrder: @vendor_po.PurchaseOrder, productid: @vendor_po.productid } }
    end

    assert_redirected_to vendor_po_url(VendorPo.last)
  end

  test "should show vendor_po" do
    get vendor_po_url(@vendor_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_po_url(@vendor_po)
    assert_response :success
  end

  test "should update vendor_po" do
    patch vendor_po_url(@vendor_po), params: { vendor_po: { PurchaseOrder: @vendor_po.PurchaseOrder, productid: @vendor_po.productid } }
    assert_redirected_to vendor_po_url(@vendor_po)
  end

  test "should destroy vendor_po" do
    assert_difference('VendorPo.count', -1) do
      delete vendor_po_url(@vendor_po)
    end

    assert_redirected_to vendor_pos_url
  end
end
