class ContactMailer < ActionMailer::Base
def contact
  subject 'Message via Gmail'
  recipients 'contact@akimono.com'
  from 'frank.cioppettini@gmail.com'
  sent_on Time.now
end
end
