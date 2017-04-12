require 'test_helper'

class BaseLinesControllerTest < ActionController::TestCase
  setup do
    @base_line = base_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_line" do
    assert_difference('BaseLine.count') do
      post :create, base_line: { t_name: @base_line.t_name, t_state: @base_line.t_state }
    end

    assert_redirected_to base_line_path(assigns(:base_line))
  end

  test "should show base_line" do
    get :show, id: @base_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_line
    assert_response :success
  end

  test "should update base_line" do
    patch :update, id: @base_line, base_line: { t_name: @base_line.t_name, t_state: @base_line.t_state }
    assert_redirected_to base_line_path(assigns(:base_line))
  end

  test "should destroy base_line" do
    assert_difference('BaseLine.count', -1) do
      delete :destroy, id: @base_line
    end

    assert_redirected_to base_lines_path
  end
end
