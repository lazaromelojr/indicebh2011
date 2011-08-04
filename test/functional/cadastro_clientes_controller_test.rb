require 'test_helper'

class CadastroClientesControllerTest < ActionController::TestCase
  setup do
    @cadastro_cliente = cadastro_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastro_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro_cliente" do
    assert_difference('CadastroCliente.count') do
      post :create, :cadastro_cliente => @cadastro_cliente.attributes
    end

    assert_redirected_to cadastro_cliente_path(assigns(:cadastro_cliente))
  end

  test "should show cadastro_cliente" do
    get :show, :id => @cadastro_cliente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cadastro_cliente.to_param
    assert_response :success
  end

  test "should update cadastro_cliente" do
    put :update, :id => @cadastro_cliente.to_param, :cadastro_cliente => @cadastro_cliente.attributes
    assert_redirected_to cadastro_cliente_path(assigns(:cadastro_cliente))
  end

  test "should destroy cadastro_cliente" do
    assert_difference('CadastroCliente.count', -1) do
      delete :destroy, :id => @cadastro_cliente.to_param
    end

    assert_redirected_to cadastro_clientes_path
  end
end
