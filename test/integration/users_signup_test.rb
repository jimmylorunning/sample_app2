require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name:  "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar" }
    end
    assert_template 'users/new'
  end

  test "valid signup information" do
  	get signup_path
  	# i wrote this myself, he uses assert_difference 'User.count', 1 do... which I didn't know about
  	original_user_count = User.count
  		# tried using signup_path here but it didn't work, why?
  		post_via_redirect users_path, user: { 	name: 	"kewjrwe",
  														email: 	"lwekr@elkwr.com",
  														password: 							"abcdefg",
  														password_confirmation: 	"abcdefg" }
  	# post_via_redirect variant = arranges to follow the redirect after submission
  	assert User.count == original_user_count + 1
  	assert_template 'users/show'
  end

end
