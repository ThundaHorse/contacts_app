class Api::ContactsController < ApplicationController
 def index 
  @contacts = Contact.all 
  render 'index.json.jbuilder'
 end 

 def create
  @contact = Contact.new(
                          first_name: params[:first_name],
                          last_name: params[:last_name], 
                          email: params[:email],
                          phone_number: params[:phone_number]
                        )
  @contact.save 

  render 'show.json.jbuilder'
 end 

 def show
  @contact = Contact.find(params[:id])
  render 'show.json.jbuilder'
 end 

 def update 
  @contact = Contact.find(params[:id]) 

  @contact.first_name = params[:id] || @contact.first_name 
  @contact.last_name = params[:id] || @contact.last_name 
  @contact.email = params[:id] || @contact.email 
  @contact.phone_number = params[:id] || @contact.phone_number 
 end 

end
