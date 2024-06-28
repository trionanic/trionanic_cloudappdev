require "test_helper"

class Test2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test2_index_url
    assert_response :success
  end

  test "should get triona" do
    get test2_triona_url
    assert_response :success
  end
end
