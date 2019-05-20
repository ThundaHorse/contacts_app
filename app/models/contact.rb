class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true 

  # validates :email, uniqueness: true
  # validates :email, format: { with: /\A\w+[@]\w{3,}[.]\w{2,}\z/, message: "must be a valid email" } 

  belongs_to :user
  belongs_to :groups
  # belongs_to :contact_groups 
  has_many :contact_groups 
  has_many :groups, through: :contact_groups

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

