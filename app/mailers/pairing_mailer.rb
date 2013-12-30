class PairingMailer < ActionMailer::Base
  #TODO: Change me
  default from: '"Pair Pong" greg@gregmalcolm.com'

  def invitation_email(user, recipient, token)
    @user = user
    @recipient = recipient
    @accept_url = "#{root_url}/#/accept?invite=#{token}"
    mail to: @recipient,
         subject: "You have been invited to pair on kata using Pair Pong!"
  end
end
