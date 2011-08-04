require 'test_helper'

class ServicosindicesControllerTest < ActionController::TestCase
  setup do
    @servicosindex = servicosindices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicosindices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicosindex" do
    assert_difference('Servicosindice.count') do
      post :create, :servicosindex => @servicosindex.attributes
    end

    assert_redirected_to servicosindex_path(assigns(:servicosindex))
  end

  test "should show servicosindex" do
    get :show, :id => @servicosindex.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @servicosindex.to_param
    assert_response :success
  end

  test "should update servicosindex" do
    put :update, :id => @servicosindex.to_param, :servicosindex => @servicosindex.attributes
    assert_redirected_to servicosindex_path(assigns(:servicosindex))
  end

  test "should destroy servicosindex" do
    assert_difference('Servicosindice.count', -1) do
      delete :destroy, :id => @servicosindex.to_param
    end

    assert_redirected_to servicosindices_path
  end
end
