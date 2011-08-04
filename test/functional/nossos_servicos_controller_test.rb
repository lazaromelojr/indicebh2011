require 'test_helper'

class NossosServicosControllerTest < ActionController::TestCase
  setup do
    @nossos_servico = nossos_servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nossos_servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nossos_servico" do
    assert_difference('NossosServico.count') do
      post :create, :nossos_servico => @nossos_servico.attributes
    end

    assert_redirected_to nossos_servico_path(assigns(:nossos_servico))
  end

  test "should show nossos_servico" do
    get :show, :id => @nossos_servico.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nossos_servico.to_param
    assert_response :success
  end

  test "should update nossos_servico" do
    put :update, :id => @nossos_servico.to_param, :nossos_servico => @nossos_servico.attributes
    assert_redirected_to nossos_servico_path(assigns(:nossos_servico))
  end

  test "should destroy nossos_servico" do
    assert_difference('NossosServico.count', -1) do
      delete :destroy, :id => @nossos_servico.to_param
    end

    assert_redirected_to nossos_servicos_path
  end
end
