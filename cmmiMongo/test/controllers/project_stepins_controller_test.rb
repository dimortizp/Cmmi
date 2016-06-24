require 'test_helper'

class ProjectStepinsControllerTest < ActionController::TestCase
  setup do
    @project_stepin = project_stepins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_stepins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_stepin" do
    assert_difference('ProjectStepin.count') do
      post :create, project_stepin: { n_project: @project_stepin.n_project, n_step: @project_stepin.n_step, t_document: @project_stepin.t_document }
    end

    assert_redirected_to project_stepin_path(assigns(:project_stepin))
  end

  test "should show project_stepin" do
    get :show, id: @project_stepin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_stepin
    assert_response :success
  end

  test "should update project_stepin" do
    patch :update, id: @project_stepin, project_stepin: { n_project: @project_stepin.n_project, n_step: @project_stepin.n_step, t_document: @project_stepin.t_document }
    assert_redirected_to project_stepin_path(assigns(:project_stepin))
  end

  test "should destroy project_stepin" do
    assert_difference('ProjectStepin.count', -1) do
      delete :destroy, id: @project_stepin
    end

    assert_redirected_to project_stepins_path
  end
end
