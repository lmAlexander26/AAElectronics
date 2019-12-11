require "application_system_test_case"

class TabletsTest < ApplicationSystemTestCase
  setup do
    @tablet = tablets(:one)
  end

  test "visiting the index" do
    visit tablets_url
    assert_selector "h1", text: "Tablets"
  end

  test "creating a Tablet" do
    visit tablets_url
    click_on "New Tablet"

    fill_in "Os", with: @tablet.OS
    fill_in "Model", with: @tablet.model
    fill_in "Name", with: @tablet.name
    fill_in "Vendor", with: @tablet.vendor
    fill_in "Version", with: @tablet.version
    click_on "Create Tablet"

    assert_text "Tablet was successfully created"
    click_on "Back"
  end

  test "updating a Tablet" do
    visit tablets_url
    click_on "Edit", match: :first

    fill_in "Os", with: @tablet.OS
    fill_in "Model", with: @tablet.model
    fill_in "Name", with: @tablet.name
    fill_in "Vendor", with: @tablet.vendor
    fill_in "Version", with: @tablet.version
    click_on "Update Tablet"

    assert_text "Tablet was successfully updated"
    click_on "Back"
  end

  test "destroying a Tablet" do
    visit tablets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tablet was successfully destroyed"
  end
end
