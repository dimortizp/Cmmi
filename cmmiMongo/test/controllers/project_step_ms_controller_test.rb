require 'test_helper'

class ProjectStepMsControllerTest < ActionController::TestCase
  setup do
    @project_step_m = project_step_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_step_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_step_m" do
    assert_difference('ProjectStepM.count') do
      post :create, project_step_m: { n_project: @project_step_m.n_project, n_step: @project_step_m.n_step, t_document: @project_step_m.t_document, t_type: @project_step_m.t_type }
    end

    assert_redirected_to project_step_m_path(assigns(:project_step_m))
  end

  test "should show project_step_m" do
    get :show, id: @project_step_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_step_m
    assert_response :success
  end

  test "should update project_step_m" do
    patch :update, id: @project_step_m, project_step_m: { n_project: @project_step_m.n_project, n_step: @project_step_m.n_step, t_document: @project_step_m.t_document, t_type: @project_step_m.t_type }
    assert_redirected_to project_step_m_path(assigns(:project_step_m))
  end

  test "should destroy project_step_m" do
    assert_difference('ProjectStepM.count', -1) do
      delete :destroy, id: @project_step_m
    end

    assert_redirected_to project_step_ms_path
  end
end
