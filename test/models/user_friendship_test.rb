require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
	should belong_to(:user)
	should belong_to(:friend)


	test "that creating a friendship works" do
			assert_nothing_raised do
			User.Friendship.create user: users(:arthur)
		end
	end
end