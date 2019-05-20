json.id contacts.id
json.first_name contacts.first_name
json.middle_name contacts.middle_name
json.last_name contacts.last_name
json.bio contacts.bio
json.email contacts.email
json.phone_number contacts.phone_number


json.groups do 
  json.array! contacts.groups, partial: "api/groups/group", as: :groups
end 

# json.formatted do 
  # json.updated_at contacts.friendly_updated_at
  # json.full_name contacts.full_name
  # json.nihonjin_number contacts.nihonjin_number
# end 


