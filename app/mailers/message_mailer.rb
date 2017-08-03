class MessageMailer < ApplicationMailer
  default from: 'Your Mailer <noreply@yourdomain.com>'
  default to: 'Your Name <your.email@yourdomain.com>'

  def new_message(message)
    @message = message
  end
end
