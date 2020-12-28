require "test_helper"

class DatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dato = datos(:one)
  end

  test "should get index" do
    get datos_url
    assert_response :success
  end

  test "should get new" do
    get new_dato_url
    assert_response :success
  end

  test "should create dato" do
    assert_difference('Dato.count') do
      post datos_url, params: { dato: { dato1: @dato.dato1 } }
    end

    assert_redirected_to dato_url(Dato.last)
  end

  test "should show dato" do
    get dato_url(@dato)
    assert_response :success
  end

  test "should get edit" do
    get edit_dato_url(@dato)
    assert_response :success
  end

  test "should update dato" do
    patch dato_url(@dato), params: { dato: { dato1: @dato.dato1 } }
    assert_redirected_to dato_url(@dato)
  end

  test "should destroy dato" do
    assert_difference('Dato.count', -1) do
      delete dato_url(@dato)
    end

    assert_redirected_to datos_url
  end
end
