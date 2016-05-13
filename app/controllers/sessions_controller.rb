class SessionsController < ApplicationController
 

  def new
  	@user = User.new
  end

  def create
  	if
  	@user = login(params[:email], params[:password])
  		redirect_back_or_to(users_path(@user.id), notice: "Succesfully Logged In")
  	else
  		flash.now[:alert]= "Login In Failed"
  		render :new
  	end
  end

  def destroy
  	logout
  	redirect_to users_path
  end

end
