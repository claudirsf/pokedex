require "application_system_test_case"

class Tipo1sTest < ApplicationSystemTestCase
  setup do
    @tipo1 = tipo1s(:one)
  end

  test "visiting the index" do
    visit tipo1s_url
    assert_selector "h1", text: "Tipo1s"
  end

  test "creating a Tipo1" do
    visit tipo1s_url
    click_on "New Tipo1"

    fill_in "Nome", with: @tipo1.nome
    click_on "Create Tipo1"

    assert_text "Tipo1 was successfully created"
    click_on "Back"
  end

  test "updating a Tipo1" do
    visit tipo1s_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @tipo1.nome
    click_on "Update Tipo1"

    assert_text "Tipo1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo1" do
    visit tipo1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo1 was successfully destroyed"
  end
end
