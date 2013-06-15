class ContactMailer < ActionMailer::Base
	default :from => "contact@akimono.com"
def contact_email(contactor)
	@contactor = contactor
    mail(:to => "frank.cioppettini@gmail.com", :subject => "subject")
end
end
