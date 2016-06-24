require 'test_helper'

class StepoutsControllerTest < ActionController::TestCase
  setup do
    @stepout = stepouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stepouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stepout" do
    assert_difference('Stepout.count') do
      post :create, stepout: { n_step: @stepout.n_step, t_format: @stepout.t_format }
    end

    assert_redirected_to stepout_path(assigns(:stepout))
  end

  test "should show stepout" do
    get :show, id: @stepout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stepout
    assert_response :success
  end

  test "should update stepout" do
    patch :update, id: @stepout, stepout: { n_step: @stepout.n_step, t_format: @stepout.t_format }
    assert_redirected_to stepout_path(assigns(:stepout))
  end

  test "should destroy stepout" do
    assert_difference('Stepout.count', -1) do
      delete :destroy, id: @stepout
    end

    assert_redirected_to stepouts_path
  end
end
