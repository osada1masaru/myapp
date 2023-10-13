require "test_helper"

class StylasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stylas_index_url
    assert_response :success
  end

  test "should get show" do
    get stylas_show_url
    assert_response :success
  end
end
