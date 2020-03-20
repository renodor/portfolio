class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      UserMailer.general_message(@contact).deliver
      flash.notice = "Thank you future partner! I will come back to you shortly."
      redirect_to root_path
    else
      render :new
    end
  end

  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
