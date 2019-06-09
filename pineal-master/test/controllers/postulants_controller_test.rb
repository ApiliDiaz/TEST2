require 'test_helper'

class PostulantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postulant = postulants(:one)
  end

  test "should get index" do
    get postulants_url
    assert_response :success
  end

  test "should get new" do
    get new_postulant_url
    assert_response :success
  end

  test "should create postulant" do
    assert_difference('Postulant.count') do
      post postulants_url, params: { postulant: { ajusta_renta: @postulant.ajusta_renta, apto: @postulant.apto, ex_cargo: @postulant.ex_cargo, ex_empleador: @postulant.ex_empleador, f_panel: @postulant.f_panel, f_preocupacional: @postulant.f_preocupacional, f_psicolaboral: @postulant.f_psicolaboral, nombre: @postulant.nombre, observaciones: @postulant.observaciones, origin_id: @postulant.origin_id, panel: @postulant.panel, pasos_seguir: @postulant.pasos_seguir, position_id: @postulant.position_id, preocupacional: @postulant.preocupacional, psicolaboral: @postulant.psicolaboral, r_esperada: @postulant.r_esperada, residencia: @postulant.residencia, turno: @postulant.turno } }
    end

    assert_redirected_to postulant_url(Postulant.last)
  end

  test "should show postulant" do
    get postulant_url(@postulant)
    assert_response :success
  end

  test "should get edit" do
    get edit_postulant_url(@postulant)
    assert_response :success
  end

  test "should update postulant" do
    patch postulant_url(@postulant), params: { postulant: { ajusta_renta: @postulant.ajusta_renta, apto: @postulant.apto, ex_cargo: @postulant.ex_cargo, ex_empleador: @postulant.ex_empleador, f_panel: @postulant.f_panel, f_preocupacional: @postulant.f_preocupacional, f_psicolaboral: @postulant.f_psicolaboral, nombre: @postulant.nombre, observaciones: @postulant.observaciones, origin_id: @postulant.origin_id, panel: @postulant.panel, pasos_seguir: @postulant.pasos_seguir, position_id: @postulant.position_id, preocupacional: @postulant.preocupacional, psicolaboral: @postulant.psicolaboral, r_esperada: @postulant.r_esperada, residencia: @postulant.residencia, turno: @postulant.turno } }
    assert_redirected_to postulant_url(@postulant)
  end

  test "should destroy postulant" do
    assert_difference('Postulant.count', -1) do
      delete postulant_url(@postulant)
    end

    assert_redirected_to postulants_url
  end
end
