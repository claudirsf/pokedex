require "application_system_test_case"

class DexesTest < ApplicationSystemTestCase
  setup do
    @dex = dexes(:one)
  end

  test "visiting the index" do
    visit dexes_url
    assert_selector "h1", text: "Dexes"
  end

  test "creating a Dex" do
    visit dexes_url
    click_on "New Dex"

    fill_in "Numero", with: @dex.numero
    click_on "Create Dex"

    assert_text "Dex was successfully created"
    click_on "Back"
  end

  test "updating a Dex" do
    visit dexes_url
    click_on "Edit", match: :first

    fill_in "Numero", with: @dex.numero
    click_on "Update Dex"

    assert_text "Dex was successfully updated"
    click_on "Back"
  end

  test "destroying a Dex" do
    visit dexes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dex was successfully destroyed"
  end
end
