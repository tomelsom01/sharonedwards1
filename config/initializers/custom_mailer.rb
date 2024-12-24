class CustomMailer < Mail::SMTP
  def deliver!(mail)
    if mail.to.first.include?('absolutehealthandphysio.co.uk')
      mail.delivery_method.settings[:domain] = 'absolutehealthandphysio.co.uk'
    else
      mail.delivery_method.settings[:domain] = 'physiotherapyrichmond.co.uk'
    end
    super
  end
end

ActionMailer::Base.add_delivery_method :custom_smtp, CustomMailer
