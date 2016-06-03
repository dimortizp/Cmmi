require 'test_helper'

class ProjectNsControllerTest < ActionController::TestCase
  setup do
    @project_n = project_ns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_ns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_n" do
    assert_difference('ProjectN.count') do
      post :create, project_n: { t_name: @project_n.t_name }
    end

    assert_redirected_to project_n_path(assigns(:project_n))
  end

  test "should show project_n" do
    get :show, id: @project_n
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_n
    assert_response :success
  end

  test "should update project_n" do
    patch :update, id: @project_n, project_n: { t_name: @project_n.t_name }
    assert_redirected_to project_n_path(assigns(:project_n))
  end

  test "should destroy project_n" do
    assert_difference('ProjectN.count', -1) do
      delete :destroy, id: @project_n
    end

    assert_redirected_to project_ns_path
  end
end
