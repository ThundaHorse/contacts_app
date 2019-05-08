class Contact < ApplicationRecord
  def friendly_updated_at 
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end 

  def full_name 
    "#{first_name} #{middle_name} #{last_name}"
  end 

  def nihonjin_number 
    formatted_number = ['+81']
    formatted_number << phone_number.split("-").join(" ")
    formatted_number.join(" ")
  end 

end
