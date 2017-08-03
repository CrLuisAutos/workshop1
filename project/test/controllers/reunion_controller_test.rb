require 'test_helper'

class ReunionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reunion_new_url
    assert_response :success
  end

  test "should get create" do
    get reunion_create_url
    assert_response :success
  end

  test "should get edit" do
    get reunion_edit_url
    assert_response :success
  end

  test "should get update" do
    get reunion_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reunion_destroy_url
    assert_response :success
  end

end
