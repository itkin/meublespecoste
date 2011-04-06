class ContactsController < ApplicationController

  def index
    @stores = Store.all
    @json = @stores.to_gmaps4rails
    @contact = Contact.new()
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      flash.now[:notice]= "Votre message nous a été envoyé"
      ContactMailer.contact_message(@contact).deliver
      ContactMailer.feed_back_message(@contact).deliver if Param::SEND_FEEDBACK_EMAIL
      @contact = Contact.new
    else
      flash.now[:warning]= "Veuillez remplir les champs en rouge"
    end
    render :create
  end

end
