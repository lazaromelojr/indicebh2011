require 'test_helper'

class AdminIndicebhsControllerTest < ActionController::TestCase
  setup do
    @admin_indicebh = admin_indicebhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_indicebhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_indicebh" do
    assert_difference('AdminIndicebh.count') do
      post :create, :admin_indicebh => @admin_indicebh.attributes
    end

    assert_redirected_to admin_indicebh_path(assigns(:admin_indicebh))
  end

  test "should show admin_indicebh" do
    get :show, :id => @admin_indicebh.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_indicebh.to_param
    assert_response :success
  end

  test "should update admin_indicebh" do
    put :update, :id => @admin_indicebh.to_param, :admin_indicebh => @admin_indicebh.attributes
    assert_redirected_to admin_indicebh_path(assigns(:admin_indicebh))
  end

  test "should destroy admin_indicebh" do
    assert_difference('AdminIndicebh.count', -1) do
      delete :destroy, :id => @admin_indicebh.to_param
    end

    assert_redirected_to admin_indicebhs_path
  end
end
