require 'test_helper'

class BaseLineDocumentsControllerTest < ActionController::TestCase
  setup do
    @base_line_document = base_line_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_line_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_line_document" do
    assert_difference('BaseLineDocument.count') do
      post :create, base_line_document: { n_version: @base_line_document.n_version, t_document: @base_line_document.t_document, t_state: @base_line_document.t_state }
    end

    assert_redirected_to base_line_document_path(assigns(:base_line_document))
  end

  test "should show base_line_document" do
    get :show, id: @base_line_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_line_document
    assert_response :success
  end

  test "should update base_line_document" do
    patch :update, id: @base_line_document, base_line_document: { n_version: @base_line_document.n_version, t_document: @base_line_document.t_document, t_state: @base_line_document.t_state }
    assert_redirected_to base_line_document_path(assigns(:base_line_document))
  end

  test "should destroy base_line_document" do
    assert_difference('BaseLineDocument.count', -1) do
      delete :destroy, id: @base_line_document
    end

    assert_redirected_to base_line_documents_path
  end
end
