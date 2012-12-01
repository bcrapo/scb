require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

	test "that /login route opens the signin page" do 
		get '/sign-in'
		assert_response :success
	end

	test "that /logout route opens the log out page" do 
		get '/log-out'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /register route opens the sign up page" do 
		get '/register-2005'
		assert_response :success
	end

end
