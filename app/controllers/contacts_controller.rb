class ContactsController < ApplicationController
  def create
    # Add reCAPTCHA verification first
    unless verify_recaptcha(action: 'contact', minimum_score: 0.3)
      Rails.logger.error "reCAPTCHA failed: #{request.remote_ip} - Score: #{recaptcha_reply['score']}"
      flash[:alert] = "Failed CAPTCHA verification. Please try again."
      redirect_to root_path
      return  # Exit early on failure
    end

    @contact = Contact.new(contact_params)

    if @contact.save
      begin
        ContactMailer.contact_email(@contact).deliver_now!
        flash[:notice] = "Thank you for your message! We'll contact you soon."
      rescue => e
        Rails.logger.error "Email failed: #{e.message}"
        flash[:alert] = "Message saved, but email notification failed."
      end
      redirect_to root_path
    else
      flash[:alert] = "Error saving message. Please check your inputs."
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
