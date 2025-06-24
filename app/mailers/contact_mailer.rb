class ContactMailer < ApplicationMailer
  default to: 'brisbanephysio@hotmail.co.uk'

  def contact_email(contact)
    @contact = contact
    mail(
      from: @contact.email,
      subject: 'New Contact Form Submission',
      reply_to: @contact.email
    )
  end
end
