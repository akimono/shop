class ContactMailer < ActionMailer::Base
	default :from => "contact@akimono.com"
def contact_email(@contactor)
    mail(:to => "contact@akimono.com", :subject => @contactor.contactorsubject )
end
end
