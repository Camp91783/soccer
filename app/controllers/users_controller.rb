class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@users = User.new(user_params)
  		if user.save
  			redirect_to users_path, notice:  "Saved"
  		else
  			render :new
  		end
  end 

  def show
  	@user = User.find(params[:id])
  end

  def index
  	@user = User.all
  end


private 
	def user_params
		params.require(:user). permit(:email, 
			:password, :password_confirmation)
	end
end

