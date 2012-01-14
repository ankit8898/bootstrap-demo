require 'test_helper'

class OrigamisControllerTest < ActionController::TestCase
  setup do
    @origami = origamis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:origamis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create origami" do
    assert_difference('Origami.count') do
      post :create, :origami => @origami.attributes
    end

    assert_redirected_to origami_path(assigns(:origami))
  end

  test "should show origami" do
    get :show, :id => @origami.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @origami.to_param
    assert_response :success
  end

  test "should update origami" do
    put :update, :id => @origami.to_param, :origami => @origami.attributes
    assert_redirected_to origami_path(assigns(:origami))
  end

  test "should destroy origami" do
    assert_difference('Origami.count', -1) do
      delete :destroy, :id => @origami.to_param
    end

    assert_redirected_to origamis_path
  end
end
