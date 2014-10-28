require 'test_helper'

class RulesControllerTest < ActionController::TestCase
  test "should get rule" do
    get :rule
    assert_response :success
  end

  test "should get comment" do
    get :comment
    assert_response :success
  end

end
