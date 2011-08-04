require 'test_helper'

class PesquisaqualitativasControllerTest < ActionController::TestCase
  setup do
    @pesquisaqualitativa = pesquisaqualitativas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesquisaqualitativas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesquisaqualitativa" do
    assert_difference('Pesquisaqualitativa.count') do
      post :create, :pesquisaqualitativa => @pesquisaqualitativa.attributes
    end

    assert_redirected_to pesquisaqualitativa_path(assigns(:pesquisaqualitativa))
  end

  test "should show pesquisaqualitativa" do
    get :show, :id => @pesquisaqualitativa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pesquisaqualitativa.to_param
    assert_response :success
  end

  test "should update pesquisaqualitativa" do
    put :update, :id => @pesquisaqualitativa.to_param, :pesquisaqualitativa => @pesquisaqualitativa.attributes
    assert_redirected_to pesquisaqualitativa_path(assigns(:pesquisaqualitativa))
  end

  test "should destroy pesquisaqualitativa" do
    assert_difference('Pesquisaqualitativa.count', -1) do
      delete :destroy, :id => @pesquisaqualitativa.to_param
    end

    assert_redirected_to pesquisaqualitativas_path
  end
end
