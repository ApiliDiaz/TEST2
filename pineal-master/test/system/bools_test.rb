require "application_system_test_case"

class BoolsTest < ApplicationSystemTestCase
  setup do
    @bool = bools(:one)
  end

  test "visiting the index" do
    visit bools_url
    assert_selector "h1", text: "Bools"
  end

  test "creating a Bool" do
    visit bools_url
    click_on "New Bool"

    fill_in "Bool", with: @bool.bool
    click_on "Create Bool"

    assert_text "Bool was successfully created"
    click_on "Back"
  end

  test "updating a Bool" do
    visit bools_url
    click_on "Edit", match: :first

    fill_in "Bool", with: @bool.bool
    click_on "Update Bool"

    assert_text "Bool was successfully updated"
    click_on "Back"
  end

  test "destroying a Bool" do
    visit bools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bool was successfully destroyed"
  end
end
