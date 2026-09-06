require "test_helper"

class ServerTimingTest < ActionDispatch::IntegrationTest
  test "application exposes middleware timing" do
    get root_path

    assert_response :success
    assert_match(/app;dur=\d+(\.\d+)?/, response.headers["Server-Timing"])
  end
end
