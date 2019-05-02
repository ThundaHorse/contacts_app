class Api::ContactsController < ApplicationController
  def contacts_action   
    @contact = Contact.first
    
    render 'contacts_app_view.json.jbuilder'
  end 

  def all_contacts_action 
    @contacts = Contact.all 

    render 'all_contacts_view.json.jbuilder'
  end 

end
