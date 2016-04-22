require 'test_helper'

class RecognitionControllerTest < ActionController::TestCase
  test "should get face" do
    get :face
    assert_response :success
  end

end
