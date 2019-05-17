require 'test_helper'

class Tipo1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo1 = tipo1s(:one)
  end

  test "should get index" do
    get tipo1s_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo1_url
    assert_response :success
  end

  test "should create tipo1" do
    assert_difference('Tipo1.count') do
      post tipo1s_url, params: { tipo1: { nome: @tipo1.nome } }
    end

    assert_redirected_to tipo1_url(Tipo1.last)
  end

  test "should show tipo1" do
    get tipo1_url(@tipo1)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo1_url(@tipo1)
    assert_response :success
  end

  test "should update tipo1" do
    patch tipo1_url(@tipo1), params: { tipo1: { nome: @tipo1.nome } }
    assert_redirected_to tipo1_url(@tipo1)
  end

  test "should destroy tipo1" do
    assert_difference('Tipo1.count', -1) do
      delete tipo1_url(@tipo1)
    end

    assert_redirected_to tipo1s_url
  end
end
