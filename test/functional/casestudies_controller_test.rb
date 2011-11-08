require 'test_helper'

class CasestudiesControllerTest < ActionController::TestCase
  setup do
    @casestudy = casestudies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casestudies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casestudy" do
    assert_difference('Casestudy.count') do
      post :create, casestudy: @casestudy.attributes
    end

    assert_redirected_to casestudy_path(assigns(:casestudy))
  end

  test "should show casestudy" do
    get :show, id: @casestudy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @casestudy.to_param
    assert_response :success
  end

  test "should update casestudy" do
    put :update, id: @casestudy.to_param, casestudy: @casestudy.attributes
    assert_redirected_to casestudy_path(assigns(:casestudy))
  end

  test "should destroy casestudy" do
    assert_difference('Casestudy.count', -1) do
      delete :destroy, id: @casestudy.to_param
    end

    assert_redirected_to casestudies_path
  end
end
