class ContactMailer < ActionMailer::Base
  default from: "contact@akimono.com"
  default to: "contact@akimono.com"
  def new_message(message)
  	@message = message
  	mail(:subject => "Akimono.com #{message.subject}")
  end
end
