class PagesController < ApplicationController
  def home
    @projects = Project.all
    @contact = Contact.new
  end
end
