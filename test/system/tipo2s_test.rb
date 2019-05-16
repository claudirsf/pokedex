require "application_system_test_case"

class Tipo2sTest < ApplicationSystemTestCase
  setup do
    @tipo2 = tipo2s(:one)
  end

  test "visiting the index" do
    visit tipo2s_url
    assert_selector "h1", text: "Tipo2s"
  end

  test "creating a Tipo2" do
    visit tipo2s_url
    click_on "New Tipo2"

    fill_in "Nome", with: @tipo2.nome
    click_on "Create Tipo2"

    assert_text "Tipo2 was successfully created"
    click_on "Back"
  end

  test "updating a Tipo2" do
    visit tipo2s_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @tipo2.nome
    click_on "Update Tipo2"

    assert_text "Tipo2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo2" do
    visit tipo2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo2 was successfully destroyed"
  end
end
