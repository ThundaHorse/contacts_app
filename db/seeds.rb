# 500.times do 
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   ids = [1,2]

#   contact = Contact.new(
#                         first_name: first_name,
#                         middle_name: Faker::Name.middle_name,
#                         last_name: last_name,
#                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number,
#                         bio: Faker::Hacker.say_something_smart,
#                         user_id: ids.sample
#                         )
#   contact.save
# end

