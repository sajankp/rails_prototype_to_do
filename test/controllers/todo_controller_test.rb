require 'test_helper'

class TodoControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get todo_index_url
    assert_response :success
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

end
