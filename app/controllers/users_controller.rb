class UsersController < ActionController::Base
	

	private
    def users_params
       params.require(:user).permit( :email, :password, :password_confirmation, :first_name, :last_name, :profile_name)
    end
end