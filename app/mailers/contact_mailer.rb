class ContactMailer < ApplicationMailer
  class ContactMailer < ApplicationMailer
    default to: 'te28@hotmail.com' # Replace with your recipient email

    def contact_email(contact)
      @contact = contact
      mail(from: @contact.email, subject: 'New Contact Form Submission')
    end
  end

end