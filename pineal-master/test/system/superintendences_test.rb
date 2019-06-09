require "application_system_test_case"

class SuperintendencesTest < ApplicationSystemTestCase
  setup do
    @superintendence = superintendences(:one)
  end

  test "visiting the index" do
    visit superintendences_url
    assert_selector "h1", text: "Superintendences"
  end

  test "creating a Superintendence" do
    visit superintendences_url
    click_on "New Superintendence"

    fill_in "Management", with: @superintendence.management_id
    fill_in "Nombre", with: @superintendence.nombre
    click_on "Create Superintendence"

    assert_text "Superintendence was successfully created"
    click_on "Back"
  end

  test "updating a Superintendence" do
    visit superintendences_url
    click_on "Edit", match: :first

    fill_in "Management", with: @superintendence.management_id
    fill_in "Nombre", with: @superintendence.nombre
    click_on "Update Superintendence"

    assert_text "Superintendence was successfully updated"
    click_on "Back"
  end

  test "destroying a Superintendence" do
    visit superintendences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Superintendence was successfully destroyed"
  end
end
