class AdminMailer < ActionMailer::Base
  default from: "tushartitame@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Thanks! for signing up to My Ruby Project!')
  end
end
