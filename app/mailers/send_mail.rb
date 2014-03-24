class SendMail < ActionMailer::Base
  default from: "from@example.com"
  # default from: "bounenkai.rb@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_mail.invitation.subject
  #
  def invitation
  # def invitation(event_id, address)
    @greeting = "Hi"

    mail to: "to@example.org"
    # mail to: address
  end
end
