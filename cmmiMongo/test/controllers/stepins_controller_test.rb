require 'test_helper'

class StepinsControllerTest < ActionController::TestCase
  setup do
    @stepin = stepins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stepins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stepin" do
    assert_difference('Stepin.count') do
      post :create, stepin: { n_step: @stepin.n_step, t_format: @stepin.t_format }
    end

    assert_redirected_to stepin_path(assigns(:stepin))
  end

  test "should show stepin" do
    get :show, id: @stepin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stepin
    assert_response :success
  end

  test "should update stepin" do
    patch :update, id: @stepin, stepin: { n_step: @stepin.n_step, t_format: @stepin.t_format }
    assert_redirected_to stepin_path(assigns(:stepin))
  end

  test "should destroy stepin" do
    assert_difference('Stepin.count', -1) do
      delete :destroy, id: @stepin
    end

    assert_redirected_to stepins_path
  end
end
