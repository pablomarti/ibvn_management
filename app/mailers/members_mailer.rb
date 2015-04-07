class MembersMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.members_mailer.new_message.subject
  #
  def new_message(emails, subject, message)
    @subject = subject
    @message = message

    mail bcc: emails, :subject => @subject
  end
end
