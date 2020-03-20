class PagesController < ApplicationController
  def home
    @projects = Project.all
    @contact = Contact.new
    if params[:contact_info]
      @contact.name = params[:contact_info][:name] if params[:contact_info][:name]
      @contact.email = params[:contact_info][:email] if params[:contact_info][:email]
      @contact.message = params[:contact_info][:message] if params[:contact_info][:message]
      @email_errors =  params[:contact_info][:errors][:email]
      @message_errors =  params[:contact_info][:errors][:message]
    end
  end
end
