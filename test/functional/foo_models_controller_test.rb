require 'test_helper'

class FooModelsControllerTest < ActionController::TestCase
  setup do
    @foo_model = foo_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foo_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foo_model" do
    assert_difference('FooModel.count') do
      post :create, foo_model: { name: @foo_model.name }
    end

    assert_redirected_to foo_model_path(assigns(:foo_model))
  end

  test "should show foo_model" do
    get :show, id: @foo_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foo_model
    assert_response :success
  end

  test "should update foo_model" do
    put :update, id: @foo_model, foo_model: { name: @foo_model.name }
    assert_redirected_to foo_model_path(assigns(:foo_model))
  end

  test "should destroy foo_model" do
    assert_difference('FooModel.count', -1) do
      delete :destroy, id: @foo_model
    end

    assert_redirected_to foo_models_path
  end
end
