class UsersController < ApplicationController
  def new
  end

  def show
  end

  def index
  end
end

private 
	def user_params
		params_require(:user).permit(:email, :password, :password_confirmation)
	end
end
