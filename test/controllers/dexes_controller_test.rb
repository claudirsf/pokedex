require 'test_helper'

class DexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dex = dexes(:one)
  end

  test "should get index" do
    get dexes_url
    assert_response :success
  end

  test "should get new" do
    get new_dex_url
    assert_response :success
  end

  test "should create dex" do
    assert_difference('Dex.count') do
      post dexes_url, params: { dex: { numero: @dex.numero } }
    end

    assert_redirected_to dex_url(Dex.last)
  end

  test "should show dex" do
    get dex_url(@dex)
    assert_response :success
  end

  test "should get edit" do
    get edit_dex_url(@dex)
    assert_response :success
  end

  test "should update dex" do
    patch dex_url(@dex), params: { dex: { numero: @dex.numero } }
    assert_redirected_to dex_url(@dex)
  end

  test "should destroy dex" do
    assert_difference('Dex.count', -1) do
      delete dex_url(@dex)
    end

    assert_redirected_to dexes_url
  end
end
