namespace :contact do
  desc "Generate slugs for the missing records"
  task generate_contact_slug: :environment do
    puts "Generates all missing slugs in Contact model"

    missing = Contact.where(slug: [nil, ''])
    puts "Found #{missing.count} missing slugs for contact model"

    missing.find_each do |c|
      c.slug = c.email.parameterize
      c.update(slug: c.slug)
      puts "Generated slugs for #{c.slug}"
    end
  end
end