require 'test_helper'

class IndiceBhsControllerTest < ActionController::TestCase
  setup do
    @indice_bh = indice_bhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indice_bhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indice_bh" do
    assert_difference('IndiceBh.count') do
      post :create, :indice_bh => @indice_bh.attributes
    end

    assert_redirected_to indice_bh_path(assigns(:indice_bh))
  end

  test "should show indice_bh" do
    get :show, :id => @indice_bh.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @indice_bh.to_param
    assert_response :success
  end

  test "should update indice_bh" do
    put :update, :id => @indice_bh.to_param, :indice_bh => @indice_bh.attributes
    assert_redirected_to indice_bh_path(assigns(:indice_bh))
  end

  test "should destroy indice_bh" do
    assert_difference('IndiceBh.count', -1) do
      delete :destroy, :id => @indice_bh.to_param
    end

    assert_redirected_to indice_bhs_path
  end
end
