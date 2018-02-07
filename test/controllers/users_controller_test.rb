require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "CoinLens"
  end
  
  test "should get register" do
    get register_path
    assert_response :success
    assert_select "title", "Register | #{@base_title}"
  end
end
