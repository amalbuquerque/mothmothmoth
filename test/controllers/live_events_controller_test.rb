require 'test_helper'

class LiveEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get live_events_all_url
    assert_response :success
  end

end
