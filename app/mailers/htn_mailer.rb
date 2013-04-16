class HtnMailer < ActionMailer::Base
  default from: "hammeringthenews@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.htn_mailer.htn_newsletter.subject
  #
  def htn_newsletter(fan, post)
    @fan = fan
    @post = post
    @greeting = "Hi"

    mail to: "#{fan.name} <#{fan.email}>", subject: "HTN's Latest News"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.htn_mailer.welcome_email.subject
  #
  def welcome_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.htn_mailer.post.subject
  #
  def post
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
