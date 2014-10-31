class UsersController < ActionController::Base
	
	def full_name
		first_name + " " + last_name
	end

	private
    def users_params
       params.require(:user).permit( :email, :password, :password_confirmation, :first_name, :last_name, :profile_name, :full_name, :user, :friend)
    end
end