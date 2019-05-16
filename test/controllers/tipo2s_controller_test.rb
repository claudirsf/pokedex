require 'test_helper'

class Tipo2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo2 = tipo2s(:one)
  end

  test "should get index" do
    get tipo2s_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo2_url
    assert_response :success
  end

  test "should create tipo2" do
    assert_difference('Tipo2.count') do
      post tipo2s_url, params: { tipo2: { nome: @tipo2.nome } }
    end

    assert_redirected_to tipo2_url(Tipo2.last)
  end

  test "should show tipo2" do
    get tipo2_url(@tipo2)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo2_url(@tipo2)
    assert_response :success
  end

  test "should update tipo2" do
    patch tipo2_url(@tipo2), params: { tipo2: { nome: @tipo2.nome } }
    assert_redirected_to tipo2_url(@tipo2)
  end

  test "should destroy tipo2" do
    assert_difference('Tipo2.count', -1) do
      delete tipo2_url(@tipo2)
    end

    assert_redirected_to tipo2s_url
  end
end
