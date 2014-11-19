require 'spec_helper'

describe "UsersSignups" do
  describe "GET /users_signups" do
    it "does accept valid signups" do
#      visit users_signups_path

#      enter data into form
#      submit
# response should be accept
    end
    it "does not accepts valid sign ups" do
# visit users_signups_path
# enter invalid data into form
# submit
#response should be the new user page
# response should include error messages are appearing
    end

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
	  	original_user_count = User.count
	  	post users_path, user: { 	name: "kewjrwe",
	  														email: "lwekr@elkwr.com",
	  														password: "abcdefg",
	  														password_confirmation: "abcdefg" }
	  	assert original_user_count != User.count
	  	assert_template 'users/show'

	  end

  end
end
