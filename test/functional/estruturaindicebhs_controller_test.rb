require 'test_helper'

class EstruturaindicebhsControllerTest < ActionController::TestCase
  setup do
    @estruturaindicebh = estruturaindicebhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estruturaindicebhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estruturaindicebh" do
    assert_difference('Estruturaindicebh.count') do
      post :create, :estruturaindicebh => @estruturaindicebh.attributes
    end

    assert_redirected_to estruturaindicebh_path(assigns(:estruturaindicebh))
  end

  test "should show estruturaindicebh" do
    get :show, :id => @estruturaindicebh.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @estruturaindicebh.to_param
    assert_response :success
  end

  test "should update estruturaindicebh" do
    put :update, :id => @estruturaindicebh.to_param, :estruturaindicebh => @estruturaindicebh.attributes
    assert_redirected_to estruturaindicebh_path(assigns(:estruturaindicebh))
  end

  test "should destroy estruturaindicebh" do
    assert_difference('Estruturaindicebh.count', -1) do
      delete :destroy, :id => @estruturaindicebh.to_param
    end

    assert_redirected_to estruturaindicebhs_path
  end
end
