class InfoMailer < ApplicationMailer
	default from: 'sccssoccerproject@gmail.com'
 
  def info_email(user)
    @user = user
    @url  = 'http://localhost:3000/league'
    mail(to: @user.email, subject: 'Information on Lincoln Nebraska Soccer League')
  end
end
