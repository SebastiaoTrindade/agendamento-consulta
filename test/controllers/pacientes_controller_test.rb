require 'test_helper'

class PacientesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pacientes_new_url
    assert_response :success
  end

  test "should get create" do
    get pacientes_create_url
    assert_response :success
  end

  test "should get index" do
    get pacientes_index_url
    assert_response :success
  end

end
