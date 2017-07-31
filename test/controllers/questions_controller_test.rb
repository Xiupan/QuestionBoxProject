require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get questions_welcome_url
    assert_response :success
  end

  test "should get index" do
    get questions_index_url
    assert_response :success
  end

end
