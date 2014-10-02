class ContactMailer < ActionMailer::Base
  default :from => "website@meublepecostes.fr"




  def contact_message(contact)
    @contact = contact
    subject "Un visiteur vous a laissé un message sur meublepecoste.fr"
    recipients "cuisinemeuble.pecoste@orange.fr"
  end

  def feed_back_message(contact)
    subject "Nous avons bien reçu votre message"
    recipients "#{contact.email}"
  end

end
