require "application_system_test_case"

class ContestsTest < ApplicationSystemTestCase
  setup do
    @contest = contests(:one)
  end

  test "visiting the index" do
    visit contests_url
    assert_selector "h1", text: "Contests"
  end

  test "creating a Contest" do
    visit contests_url
    click_on "New Contest"

    fill_in "Comentario", with: @contest.comentario
    fill_in "Dias", with: @contest.dias
    fill_in "F apertura", with: @contest.f_apertura
    fill_in "F aprobacion", with: @contest.f_aprobacion
    fill_in "F creacion", with: @contest.f_creacion
    fill_in "F ingreso", with: @contest.f_ingreso
    fill_in "Position", with: @contest.position_id
    fill_in "Status", with: @contest.status
    click_on "Create Contest"

    assert_text "Contest was successfully created"
    click_on "Back"
  end

  test "updating a Contest" do
    visit contests_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @contest.comentario
    fill_in "Dias", with: @contest.dias
    fill_in "F apertura", with: @contest.f_apertura
    fill_in "F aprobacion", with: @contest.f_aprobacion
    fill_in "F creacion", with: @contest.f_creacion
    fill_in "F ingreso", with: @contest.f_ingreso
    fill_in "Position", with: @contest.position_id
    fill_in "Status", with: @contest.status
    click_on "Update Contest"

    assert_text "Contest was successfully updated"
    click_on "Back"
  end

  test "destroying a Contest" do
    visit contests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contest was successfully destroyed"
  end
end
