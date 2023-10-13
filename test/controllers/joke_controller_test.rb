require "test_helper"

class JokeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get joke_index_url
    assert_response :success
  end
end
