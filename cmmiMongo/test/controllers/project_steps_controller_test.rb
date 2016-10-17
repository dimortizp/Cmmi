require 'test_helper'

class ProjectStepsControllerTest < ActionController::TestCase
  setup do
    @project_step = project_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_step" do
    assert_difference('ProjectStep.count') do
      post :create, project_step: { n_completionPercentage: @project_step.n_completionPercentage, n_estimatedTime: @project_step.n_estimatedTime, n_realtime: @project_step.n_realtime, t_state: @project_step.t_state }
    end

    assert_redirected_to project_step_path(assigns(:project_step))
  end

  test "should show project_step" do
    get :show, id: @project_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_step
    assert_response :success
  end

  test "should update project_step" do
    patch :update, id: @project_step, project_step: { n_completionPercentage: @project_step.n_completionPercentage, n_estimatedTime: @project_step.n_estimatedTime, n_realtime: @project_step.n_realtime, t_state: @project_step.t_state }
    assert_redirected_to project_step_path(assigns(:project_step))
  end

  test "should destroy project_step" do
    assert_difference('ProjectStep.count', -1) do
      delete :destroy, id: @project_step
    end

    assert_redirected_to project_steps_path
  end
end
