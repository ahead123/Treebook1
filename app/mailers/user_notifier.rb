class UserNotifier < ActionMailer::Base
  default from: "from@example.com"


  def friend_requested(user_friendhsip_id)
  	user_friendhsip = UserFriendship.find(user_friendhsip_id)
  	

  	@user = user_friendhsip.user
  	@friend = user_friendhsip.friend
  	


  	mail to: @friend.email,
  		subject: "{@user.first_name} wants to be friends on treebok."
  end

  def friend_request_accepted(user_friendhsip_id)
    user_friendhsip = UserFriendship.find(user_friendhsip_id)
    

    @user = user_friendhsip.user
    @friend = user_friendhsip.friend
    


    mail to: @user.email,
      subject: "{@friend.first_name} has accepted your friend request."
  end

end
