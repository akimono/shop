class ContactMailer < ActionMailer::Base
	default :from => "contact@akimono.com"
def contact_email(contactor)
	@contactor = contactor
    mail(:to => "contact@akimono.com", :subject => "Contact")
end
end
