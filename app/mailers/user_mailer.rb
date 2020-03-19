class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact.subject
  #

  def general_message(contact)
    @contact = contact
    mail to: "contact@renodor.co", subject: "New Message from renodor.co"
  end
end
