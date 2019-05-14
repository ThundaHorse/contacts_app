class Api::ContactsController < ApplicationController
 def index  
  
  @contacts = Contact.all 

  specific_first_name = params[:first_name] 

  if specific_first_name 
    @contacts = @contacts.where("first_name iLIKE ?", "%#{specific_first_name}%")
  end 

  last_name_search = params[:last_name] 
  if last_name_search 
    
    @contacts = @contacts.where("last_name iLIKE ?", "%#{last_name_search}%")
  end 

  render 'index.json.jbuilder'
 end 

 def create
    @contact = Contact.new(
                            first_name: params[:first_name],
                            middle_name: params[:middle_name],
                            last_name: params[:last_name], 
                            email: params[:email],
                            bio: params[:bio],
                            phone_number: params[:phone_number]
                          )
    if @contact.save 
      render "show.json.jbuilder"
    else 
      render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity 
    end 
 end 

def show
  @contact = Contact.find(params[:id])
  render 'show.json.jbuilder'
end 

def update 
  @contact = Contact.find(params[:id]) 

  @contact.first_name = params[:first_name] || @contact.first_name 
  @contact.middle_name = params[:middle_name] || @contact.middle_name
  @contact.last_name = params[:last_name] || @contact.last_name 
  @contact.bio = params[:bio] || @contact.bio
  @contact.email = params[:email] || @contact.email 
  @contact.phone_number = params[:phone_number] || @contact.phone_number 

  if @contact.save 
    render "show.json.jbuilder"
  else 
    render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity 
  end 
end

def destroy 
  @contact = Contact.find(params[:id])
  @contact.destroy
  render json: {message: "Destroyed"} 
end 


end
