require "application_system_test_case"

class DatosTest < ApplicationSystemTestCase
  setup do
    @dato = datos(:one)
  end

  test "visiting the index" do
    visit datos_url
    assert_selector "h1", text: "Datos"
  end

  test "creating a Dato" do
    visit datos_url
    click_on "New Dato"

    fill_in "Dato1", with: @dato.dato1
    click_on "Create Dato"

    assert_text "Dato was successfully created"
    click_on "Back"
  end

  test "updating a Dato" do
    visit datos_url
    click_on "Edit", match: :first

    fill_in "Dato1", with: @dato.dato1
    click_on "Update Dato"

    assert_text "Dato was successfully updated"
    click_on "Back"
  end

  test "destroying a Dato" do
    visit datos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dato was successfully destroyed"
  end
end
