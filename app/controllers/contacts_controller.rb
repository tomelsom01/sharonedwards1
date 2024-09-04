class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      # Send the email after saving the contact
      ContactMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Thank you for your message. We will get back to you soon!"
      redirect_to root_path
    else
      # Render the home page with errors if the contact fails to save
      flash[:alert] = "There was an error sending your message. Please try again."
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
