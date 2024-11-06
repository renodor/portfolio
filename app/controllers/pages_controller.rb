class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @projects = Project.where(published: true).order(:order).includes(:services, cover_photo_attachment: :blob)
    @contact = Contact.new
  end

  def create_contact
    return if params[:contact][:content].present? # Honey pot CAPTCHA for spam bots

    @contact = Contact.new(contact_params)
    if @contact.save
      UserMailer.general_message(@contact).deliver
      flash.notice = "Thank you future partner! I will come back to you shortly."
      redirect_to root_path(anchor: '')
    else
      @projects = Project.where(published: true).order(:order).includes(:services, cover_photo_attachment: :blob)
      render :home
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
