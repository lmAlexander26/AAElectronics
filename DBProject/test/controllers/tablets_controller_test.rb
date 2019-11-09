require 'test_helper'

class TabletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tablet = tablets(:one)
  end

  test "should get index" do
    get tablets_url
    assert_response :success
  end

  test "should get new" do
    get new_tablet_url
    assert_response :success
  end

  test "should create tablet" do
    assert_difference('Tablet.count') do
      post tablets_url, params: { tablet: { OS: @tablet.OS, Tabletid: @tablet.Tabletid, model: @tablet.model, name: @tablet.name, vendor: @tablet.vendor, version: @tablet.version } }
    end

    assert_redirected_to tablet_url(Tablet.last)
  end

  test "should show tablet" do
    get tablet_url(@tablet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tablet_url(@tablet)
    assert_response :success
  end

  test "should update tablet" do
    patch tablet_url(@tablet), params: { tablet: { OS: @tablet.OS, Tabletid: @tablet.Tabletid, model: @tablet.model, name: @tablet.name, vendor: @tablet.vendor, version: @tablet.version } }
    assert_redirected_to tablet_url(@tablet)
  end

  test "should destroy tablet" do
    assert_difference('Tablet.count', -1) do
      delete tablet_url(@tablet)
    end

    assert_redirected_to tablets_url
  end
end
