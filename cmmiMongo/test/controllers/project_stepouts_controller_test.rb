require 'test_helper'

class ProjectStepoutsControllerTest < ActionController::TestCase
  setup do
    @project_stepout = project_stepouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_stepouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_stepout" do
    assert_difference('ProjectStepout.count') do
      post :create, project_stepout: { n_project: @project_stepout.n_project, n_step: @project_stepout.n_step, t_document: @project_stepout.t_document }
    end

    assert_redirected_to project_stepout_path(assigns(:project_stepout))
  end

  test "should show project_stepout" do
    get :show, id: @project_stepout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_stepout
    assert_response :success
  end

  test "should update project_stepout" do
    patch :update, id: @project_stepout, project_stepout: { n_project: @project_stepout.n_project, n_step: @project_stepout.n_step, t_document: @project_stepout.t_document }
    assert_redirected_to project_stepout_path(assigns(:project_stepout))
  end

  test "should destroy project_stepout" do
    assert_difference('ProjectStepout.count', -1) do
      delete :destroy, id: @project_stepout
    end

    assert_redirected_to project_stepouts_path
  end
end
