require 'http' 

system "clear"
puts "Sup yo" 
puts ""
puts "Options"
puts "  [1] Display a single contact" 
puts "  [2] Display all contacts" 
puts "What you wanna do" 
user_option = gets.chomp 


if user_option == "1"


  response = HTTP.get('http://localhost:3000/api/contacts_url')
  contact_hash = response.parse 

  puts "#{contact_hash["first_name"]} #{contact_hash["last_name"]}" 
  puts "=" * 60 
  puts "Email: #{contact_hash["email"]}" 
  puts "Phone: #{contact_hash["phone_number"]}" 

elsif user_option == "2" 
  response = HTTP.get('http://localhost3000/api/all_contacts_url')
  contacts_array = response.parse 

  puts "All" 
  # puts "¯\_(ツ)_/¯" 
  puts ""

  contacts_array.each do |contact_hash| 
    puts "#{contact_hash["first_name"]} #{contact_hash["last_name"]}" 
    puts "=" * 60 
    puts "Email: #{contact_hash["email"]}" 
    puts "Phone: #{contact_hash["phone_number"]}" 
    puts ""
    puts "-" * 60 
    puts ""
  end 
end 