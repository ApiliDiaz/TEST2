require 'test_helper'

class VicepresidenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vicepresidency = vicepresidencies(:one)
  end

  test "should get index" do
    get vicepresidencies_url
    assert_response :success
  end

  test "should get new" do
    get new_vicepresidency_url
    assert_response :success
  end

  test "should create vicepresidency" do
    assert_difference('Vicepresidency.count') do
      post vicepresidencies_url, params: { vicepresidency: { sigla: @vicepresidency.sigla } }
    end

    assert_redirected_to vicepresidency_url(Vicepresidency.last)
  end

  test "should show vicepresidency" do
    get vicepresidency_url(@vicepresidency)
    assert_response :success
  end

  test "should get edit" do
    get edit_vicepresidency_url(@vicepresidency)
    assert_response :success
  end

  test "should update vicepresidency" do
    patch vicepresidency_url(@vicepresidency), params: { vicepresidency: { sigla: @vicepresidency.sigla } }
    assert_redirected_to vicepresidency_url(@vicepresidency)
  end

  test "should destroy vicepresidency" do
    assert_difference('Vicepresidency.count', -1) do
      delete vicepresidency_url(@vicepresidency)
    end

    assert_redirected_to vicepresidencies_url
  end
end
