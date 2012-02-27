require 'test_helper'

class UsresControllerTest < ActionController::TestCase
  setup do
    @usre = usres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usre" do
    assert_difference('Usre.count') do
      post :create, usre: @usre.attributes
    end

    assert_redirected_to usre_path(assigns(:usre))
  end

  test "should show usre" do
    get :show, id: @usre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usre
    assert_response :success
  end

  test "should update usre" do
    put :update, id: @usre, usre: @usre.attributes
    assert_redirected_to usre_path(assigns(:usre))
  end

  test "should destroy usre" do
    assert_difference('Usre.count', -1) do
      delete :destroy, id: @usre
    end

    assert_redirected_to usres_path
  end
end
