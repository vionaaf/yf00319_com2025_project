class UserMailer < ApplicationMailer
	default from: 'notifications@mailer.com'

	def welcome_email
		@user = params[:user]
		@url = 'http://mywebsite.com/login'
		mail(to: @user.email, subject: "Thanks for registering")
	end
end
