class MyMailer < ActionMailer::Base

	#need a subscriber model
	def mailer_signup(fan)
		#Since I want fan to be accessed in view, I turn it into an instance variable
		@fan = fan
		#mail's a method to prepare an email message for you
		#mail will render a view in the action's_name.html.erb
		mail(:to => fan.email, :subject => "You've signed up for Hammer In The News Articles",
		     :from => "hammeringthenews@gmail.com" )
	end

end