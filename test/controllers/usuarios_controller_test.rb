require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get usuarios_new_url
    assert_response :success
  end

  test "should get create" do
    get usuarios_create_url
    assert_response :success
  end

  test "should get edit" do
    get usuarios_edit_url
    assert_response :success
  end

  test "should get update" do
    get usuarios_update_url
    assert_response :success
  end

end
