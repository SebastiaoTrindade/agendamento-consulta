require 'test_helper'

class PsicopedagogosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get psicopedagogos_new_url
    assert_response :success
  end

  test "should get create" do
    get psicopedagogos_create_url
    assert_response :success
  end

  test "should get index" do
    get psicopedagogos_index_url
    assert_response :success
  end

end
