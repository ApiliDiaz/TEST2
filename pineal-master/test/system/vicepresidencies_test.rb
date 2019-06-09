require "application_system_test_case"

class VicepresidenciesTest < ApplicationSystemTestCase
  setup do
    @vicepresidency = vicepresidencies(:one)
  end

  test "visiting the index" do
    visit vicepresidencies_url
    assert_selector "h1", text: "Vicepresidencies"
  end

  test "creating a Vicepresidency" do
    visit vicepresidencies_url
    click_on "New Vicepresidency"

    fill_in "Sigla", with: @vicepresidency.sigla
    click_on "Create Vicepresidency"

    assert_text "Vicepresidency was successfully created"
    click_on "Back"
  end

  test "updating a Vicepresidency" do
    visit vicepresidencies_url
    click_on "Edit", match: :first

    fill_in "Sigla", with: @vicepresidency.sigla
    click_on "Update Vicepresidency"

    assert_text "Vicepresidency was successfully updated"
    click_on "Back"
  end

  test "destroying a Vicepresidency" do
    visit vicepresidencies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vicepresidency was successfully destroyed"
  end
end
