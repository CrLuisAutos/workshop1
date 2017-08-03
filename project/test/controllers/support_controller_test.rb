require 'test_helper'

class SupportControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get support_new_url
    assert_response :success
  end

  test "should get create" do
    get support_create_url
    assert_response :success
  end

  test "should get edit" do
    get support_edit_url
    assert_response :success
  end

  test "should get update" do
    get support_update_url
    assert_response :success
  end

  test "should get destroy" do
    get support_destroy_url
    assert_response :success
  end

end
