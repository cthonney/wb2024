class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    if  @contact.save
      redirect_to root_path, notice: "Your message has been successfully submitted."
    else

      render :new
    end
  end


  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
