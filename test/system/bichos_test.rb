require "application_system_test_case"

class BichosTest < ApplicationSystemTestCase
  setup do
    @bicho = bichos(:one)
  end

  test "visiting the index" do
    visit bichos_url
    assert_selector "h1", text: "Bichos"
  end

  test "creating a Bicho" do
    visit bichos_url
    click_on "New Bicho"

    fill_in "Bio", with: @bicho.bio
    fill_in "Desenho", with: @bicho.desenho
    fill_in "Dex", with: @bicho.dex
    fill_in "Forma", with: @bicho.forma
    fill_in "Nome", with: @bicho.nome
    fill_in "Tipo1", with: @bicho.tipo1
    fill_in "Tipo2", with: @bicho.tipo2
    click_on "Create Bicho"

    assert_text "Bicho was successfully created"
    click_on "Back"
  end

  test "updating a Bicho" do
    visit bichos_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @bicho.bio
    fill_in "Desenho", with: @bicho.desenho
    fill_in "Dex", with: @bicho.dex
    fill_in "Forma", with: @bicho.forma
    fill_in "Nome", with: @bicho.nome
    fill_in "Tipo1", with: @bicho.tipo1
    fill_in "Tipo2", with: @bicho.tipo2
    click_on "Update Bicho"

    assert_text "Bicho was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicho" do
    visit bichos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicho was successfully destroyed"
  end
end
