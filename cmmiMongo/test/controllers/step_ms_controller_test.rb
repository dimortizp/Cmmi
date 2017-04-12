require 'test_helper'

class StepMsControllerTest < ActionController::TestCase
  setup do
    @step_m = step_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step_m" do
    assert_difference('StepM.count') do
      post :create, step_m: { n_step: @step_m.n_step, t_format: @step_m.t_format, t_type: @step_m.t_type }
    end

    assert_redirected_to step_m_path(assigns(:step_m))
  end

  test "should show step_m" do
    get :show, id: @step_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step_m
    assert_response :success
  end

  test "should update step_m" do
    patch :update, id: @step_m, step_m: { n_step: @step_m.n_step, t_format: @step_m.t_format, t_type: @step_m.t_type }
    assert_redirected_to step_m_path(assigns(:step_m))
  end

  test "should destroy step_m" do
    assert_difference('StepM.count', -1) do
      delete :destroy, id: @step_m
    end

    assert_redirected_to step_ms_path
  end
end
