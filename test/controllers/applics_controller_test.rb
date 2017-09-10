require 'test_helper'

class ApplicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get applics_index_url
    assert_response :success
  end

  test "should get new" do
    get applics_new_url
    assert_response :success
  end

  test "should get create" do
    get applics_create_url
    assert_response :success
  end

  test "should get edit" do
    get applics_edit_url
    assert_response :success
  end

  test "should get update" do
    get applics_update_url
    assert_response :success
  end

end
