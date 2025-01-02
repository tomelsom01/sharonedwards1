class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      begin
        # Send the email after saving the contact
        ContactMailer.contact_email(@contact).deliver_now!
        flash[:notice] = "Thank you for your message. We will get back to you soon!"
      rescue => e
        Rails.logger.error "Failed to send email: #{e.message}"
        flash[:alert] = "Your message was saved, but there was an error sending the notification email."
      end
      redirect_to root_path
    else
      # Render the home page with errors if the contact fails to save
      flash[:alert] = "There was an error saving your message. Please try again."
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
