require 'test_helper'

class AddInfosControllerTest < ActionController::TestCase
  setup do
    @add_info = add_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_info" do
    assert_difference('AddInfo.count') do
      post :create, add_info: { condition: @add_info.condition, description: @add_info.description, location: @add_info.location, name: @add_info.name, number: @add_info.number }
    end

    assert_redirected_to add_info_path(assigns(:add_info))
  end

  test "should show add_info" do
    get :show, id: @add_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_info
    assert_response :success
  end

  test "should update add_info" do
    patch :update, id: @add_info, add_info: { condition: @add_info.condition, description: @add_info.description, location: @add_info.location, name: @add_info.name, number: @add_info.number }
    assert_redirected_to add_info_path(assigns(:add_info))
  end

  test "should destroy add_info" do
    assert_difference('AddInfo.count', -1) do
      delete :destroy, id: @add_info
    end

    assert_redirected_to add_infos_path
  end
end
