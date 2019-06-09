require 'test_helper'

class BoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bool = bools(:one)
  end

  test "should get index" do
    get bools_url
    assert_response :success
  end

  test "should get new" do
    get new_bool_url
    assert_response :success
  end

  test "should create bool" do
    assert_difference('Bool.count') do
      post bools_url, params: { bool: { bool: @bool.bool } }
    end

    assert_redirected_to bool_url(Bool.last)
  end

  test "should show bool" do
    get bool_url(@bool)
    assert_response :success
  end

  test "should get edit" do
    get edit_bool_url(@bool)
    assert_response :success
  end

  test "should update bool" do
    patch bool_url(@bool), params: { bool: { bool: @bool.bool } }
    assert_redirected_to bool_url(@bool)
  end

  test "should destroy bool" do
    assert_difference('Bool.count', -1) do
      delete bool_url(@bool)
    end

    assert_redirected_to bools_url
  end
end
