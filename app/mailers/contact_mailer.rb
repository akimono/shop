class ContactMailer < ActionMailer::Base
	default :from => "contact@akimono.com"
def contact_email(contactor)
	@contactor = contactor
    mail(:to => "contact@akimono.com", :subject => "Vendor Application")
end
def main_email(contact)
	@contact = contact
    mail(:to => "contact@akimono.com", :subject => "Contact")
end
end
