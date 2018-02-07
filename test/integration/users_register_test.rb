require 'test_helper'

class UsersRegisterTest < ActionDispatch::IntegrationTest
  test "invalid register information" do
  	get register_path
  	assert_no_difference 'User.count', 1 do
  		post users_path, params: { user: { name: "", 
  											email: "user@invalid", 
  											password: 				"foo",
  											password_confirmation: 	"bar"} }
  	end
  	follow_redirect!
  	assert_template 'users/show'
  end
end
