Group.create(name: "FamBam")
Group.create(name: "Eating")
Group.create(name: "Soccer")

groups = Group.all
contacts = Contact.all 

contacts.each do |contact| 
  selected_groups = groups.sample(rand(2..4)) 

  selected_groups.each do |group| 
    ContactGroup.create(contact_id: contact.id, group_id: groups.sample.id) 
  end 
end 