require 'test_helper'

class TodoFlowTest < ActionDispatch::IntegrationTest

  test "can create a todo" do
      get "/todo"
      assert_response :success

      post "/todo",
        params: { todo: { content: "The new todo"} }
      assert_response :redirect
      follow_redirect!
      assert_response :success
      assert_select "#todo_content" do
        assert_select "[value=?]",'The new todo'
      end
  end
=begin
test "can create a todo" do
    get "/todo"
    assert_response :success

    post "/todo",
      params: { todo: { content: "The new todo"} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "li", "The new todo"
  end
=end
end
