require "application_system_test_case"

class PostulantsTest < ApplicationSystemTestCase
  setup do
    @postulant = postulants(:one)
  end

  test "visiting the index" do
    visit postulants_url
    assert_selector "h1", text: "Postulants"
  end

  test "creating a Postulant" do
    visit postulants_url
    click_on "New Postulant"

    fill_in "Ajusta renta", with: @postulant.ajusta_renta
    fill_in "Apto", with: @postulant.apto
    fill_in "Ex cargo", with: @postulant.ex_cargo
    fill_in "Ex empleador", with: @postulant.ex_empleador
    fill_in "F panel", with: @postulant.f_panel
    fill_in "F preocupacional", with: @postulant.f_preocupacional
    fill_in "F psicolaboral", with: @postulant.f_psicolaboral
    fill_in "Nombre", with: @postulant.nombre
    fill_in "Observaciones", with: @postulant.observaciones
    fill_in "Origin", with: @postulant.origin_id
    fill_in "Panel", with: @postulant.panel
    fill_in "Pasos seguir", with: @postulant.pasos_seguir
    fill_in "Position", with: @postulant.position_id
    fill_in "Preocupacional", with: @postulant.preocupacional
    fill_in "Psicolaboral", with: @postulant.psicolaboral
    fill_in "R esperada", with: @postulant.r_esperada
    fill_in "Residencia", with: @postulant.residencia
    fill_in "Turno", with: @postulant.turno
    click_on "Create Postulant"

    assert_text "Postulant was successfully created"
    click_on "Back"
  end

  test "updating a Postulant" do
    visit postulants_url
    click_on "Edit", match: :first

    fill_in "Ajusta renta", with: @postulant.ajusta_renta
    fill_in "Apto", with: @postulant.apto
    fill_in "Ex cargo", with: @postulant.ex_cargo
    fill_in "Ex empleador", with: @postulant.ex_empleador
    fill_in "F panel", with: @postulant.f_panel
    fill_in "F preocupacional", with: @postulant.f_preocupacional
    fill_in "F psicolaboral", with: @postulant.f_psicolaboral
    fill_in "Nombre", with: @postulant.nombre
    fill_in "Observaciones", with: @postulant.observaciones
    fill_in "Origin", with: @postulant.origin_id
    fill_in "Panel", with: @postulant.panel
    fill_in "Pasos seguir", with: @postulant.pasos_seguir
    fill_in "Position", with: @postulant.position_id
    fill_in "Preocupacional", with: @postulant.preocupacional
    fill_in "Psicolaboral", with: @postulant.psicolaboral
    fill_in "R esperada", with: @postulant.r_esperada
    fill_in "Residencia", with: @postulant.residencia
    fill_in "Turno", with: @postulant.turno
    click_on "Update Postulant"

    assert_text "Postulant was successfully updated"
    click_on "Back"
  end

  test "destroying a Postulant" do
    visit postulants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postulant was successfully destroyed"
  end
end
