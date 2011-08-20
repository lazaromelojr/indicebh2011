require 'test_helper'

class IndicePincipalsControllerTest < ActionController::TestCase
  setup do
    @indice_pincipal = indice_pincipals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indice_pincipals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indice_pincipal" do
    assert_difference('IndicePincipal.count') do
      post :create, :indice_pincipal => @indice_pincipal.attributes
    end

    assert_redirected_to indice_pincipal_path(assigns(:indice_pincipal))
  end

  test "should show indice_pincipal" do
    get :show, :id => @indice_pincipal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @indice_pincipal.to_param
    assert_response :success
  end

  test "should update indice_pincipal" do
    put :update, :id => @indice_pincipal.to_param, :indice_pincipal => @indice_pincipal.attributes
    assert_redirected_to indice_pincipal_path(assigns(:indice_pincipal))
  end

  test "should destroy indice_pincipal" do
    assert_difference('IndicePincipal.count', -1) do
      delete :destroy, :id => @indice_pincipal.to_param
    end

    assert_redirected_to indice_pincipals_path
  end
end
