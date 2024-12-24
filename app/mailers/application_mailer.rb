class ApplicationMailer < ActionMailer::Base
  default from: 'your-email@example.com'
  layout 'mailer'

  def mail(headers = {})
    headers[:delivery_method] = :custom_smtp
    super
  end
end
