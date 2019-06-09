require 'test_helper'

class SuperintendencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @superintendence = superintendences(:one)
  end

  test "should get index" do
    get superintendences_url
    assert_response :success
  end

  test "should get new" do
    get new_superintendence_url
    assert_response :success
  end

  test "should create superintendence" do
    assert_difference('Superintendence.count') do
      post superintendences_url, params: { superintendence: { management_id: @superintendence.management_id, nombre: @superintendence.nombre } }
    end

    assert_redirected_to superintendence_url(Superintendence.last)
  end

  test "should show superintendence" do
    get superintendence_url(@superintendence)
    assert_response :success
  end

  test "should get edit" do
    get edit_superintendence_url(@superintendence)
    assert_response :success
  end

  test "should update superintendence" do
    patch superintendence_url(@superintendence), params: { superintendence: { management_id: @superintendence.management_id, nombre: @superintendence.nombre } }
    assert_redirected_to superintendence_url(@superintendence)
  end

  test "should destroy superintendence" do
    assert_difference('Superintendence.count', -1) do
      delete superintendence_url(@superintendence)
    end

    assert_redirected_to superintendences_url
  end
end
