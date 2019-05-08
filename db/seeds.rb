first_name = Faker::Name.first_name 
last_name = Faker::Name.last_name
something_for_bio = [Faker::ChuckNorris.fact, Faker::Hacker.say_something_smart]

1000.times do 
  contact = Contact.new(
                        first_name: first_name, 
                        middle_name: Faker::Name.middle_name,
                        last_name: last_name,
                        email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                        phone_number: Faker::PhoneNumber.cell_phone,
                        bio: something_for_bio.sample 
                      )
contact.save
end 


