require 'test_helper'

class MousaillonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mousaillons_new_url
    assert_response :success
  end

  test "should get edit" do
    get mousaillons_edit_url
    assert_response :success
  end

  test "should get show" do
    get mousaillons_show_url
    assert_response :success
  end

  test "should get index" do
    get mousaillons_index_url
    assert_response :success
  end

end
