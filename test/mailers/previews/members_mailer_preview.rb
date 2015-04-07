# Preview all emails at http://localhost:3000/rails/mailers/members_mailer
class MembersMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/members_mailer/new_message
  def new_message
    MembersMailer.new_message
  end

end
