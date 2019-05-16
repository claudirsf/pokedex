require 'test_helper'

class BichosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicho = bichos(:one)
  end

  test "should get index" do
    get bichos_url
    assert_response :success
  end

  test "should get new" do
    get new_bicho_url
    assert_response :success
  end

  test "should create bicho" do
    assert_difference('Bicho.count') do
      post bichos_url, params: { bicho: { bio: @bicho.bio, desenho: @bicho.desenho, dex: @bicho.dex, forma: @bicho.forma, nome: @bicho.nome, tipo1: @bicho.tipo1, tipo2: @bicho.tipo2 } }
    end

    assert_redirected_to bicho_url(Bicho.last)
  end

  test "should show bicho" do
    get bicho_url(@bicho)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicho_url(@bicho)
    assert_response :success
  end

  test "should update bicho" do
    patch bicho_url(@bicho), params: { bicho: { bio: @bicho.bio, desenho: @bicho.desenho, dex: @bicho.dex, forma: @bicho.forma, nome: @bicho.nome, tipo1: @bicho.tipo1, tipo2: @bicho.tipo2 } }
    assert_redirected_to bicho_url(@bicho)
  end

  test "should destroy bicho" do
    assert_difference('Bicho.count', -1) do
      delete bicho_url(@bicho)
    end

    assert_redirected_to bichos_url
  end
end
