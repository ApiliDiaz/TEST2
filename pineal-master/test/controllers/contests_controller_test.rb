require 'test_helper'

class ContestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contest = contests(:one)
  end

  test "should get index" do
    get contests_url
    assert_response :success
  end

  test "should get new" do
    get new_contest_url
    assert_response :success
  end

  test "should create contest" do
    assert_difference('Contest.count') do
      post contests_url, params: { contest: { comentario: @contest.comentario, dias: @contest.dias, f_apertura: @contest.f_apertura, f_aprobacion: @contest.f_aprobacion, f_creacion: @contest.f_creacion, f_ingreso: @contest.f_ingreso, position_id: @contest.position_id, status: @contest.status } }
    end

    assert_redirected_to contest_url(Contest.last)
  end

  test "should show contest" do
    get contest_url(@contest)
    assert_response :success
  end

  test "should get edit" do
    get edit_contest_url(@contest)
    assert_response :success
  end

  test "should update contest" do
    patch contest_url(@contest), params: { contest: { comentario: @contest.comentario, dias: @contest.dias, f_apertura: @contest.f_apertura, f_aprobacion: @contest.f_aprobacion, f_creacion: @contest.f_creacion, f_ingreso: @contest.f_ingreso, position_id: @contest.position_id, status: @contest.status } }
    assert_redirected_to contest_url(@contest)
  end

  test "should destroy contest" do
    assert_difference('Contest.count', -1) do
      delete contest_url(@contest)
    end

    assert_redirected_to contests_url
  end
end
