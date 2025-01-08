class ApplicationMailer < ActionMailer::Base
  def send_email(email)
    @email = email

    mail(to: 'te28@hotmail.com', subject: 'New Email Inquiry') do |format|
      format.html
      format.text
    end
    mail.reply_to = @email.email
  end

  layout "mailer"
end
