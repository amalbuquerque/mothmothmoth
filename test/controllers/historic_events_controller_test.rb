require 'test_helper'

class HistoricEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get historic_events_all_url
    assert_response :success
  end

end
