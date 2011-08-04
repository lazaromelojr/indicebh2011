require 'test_helper'

class IndiceconexaosControllerTest < ActionController::TestCase
  setup do
    @indiceconexao = indiceconexaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indiceconexaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indiceconexao" do
    assert_difference('Indiceconexao.count') do
      post :create, :indiceconexao => @indiceconexao.attributes
    end

    assert_redirected_to indiceconexao_path(assigns(:indiceconexao))
  end

  test "should show indiceconexao" do
    get :show, :id => @indiceconexao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @indiceconexao.to_param
    assert_response :success
  end

  test "should update indiceconexao" do
    put :update, :id => @indiceconexao.to_param, :indiceconexao => @indiceconexao.attributes
    assert_redirected_to indiceconexao_path(assigns(:indiceconexao))
  end

  test "should destroy indiceconexao" do
    assert_difference('Indiceconexao.count', -1) do
      delete :destroy, :id => @indiceconexao.to_param
    end

    assert_redirected_to indiceconexaos_path
  end
end
