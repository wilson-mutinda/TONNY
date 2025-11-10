namespace :contact do
  desc "Generate formatted phone numbers"
  task generate_phone_numbers: :environment do
    puts "Started generating phone numbers"
    
    missing = Contact.where("phone LIKE '0%'")
    puts "Found #{missing.count} contacts"

    missing.each do |contact|
      old_phone = contact.phone
      new_phone = old_phone.sub(/\A0/, '254')
      contact.update(phone: new_phone)
      puts "Updated #{old_phone} -> #{new_phone}"
    end

    puts "Completed phone normalization"
  end
end