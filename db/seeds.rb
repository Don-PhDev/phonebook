def contact_creator
  20.times do
    Contact.create!(
      name: Faker::Name.name,
      number: [0, Faker::Number.number].join(""),
      email: [
        Faker::Internet.unique.user_name,
        Faker::Internet.email.split("@").last
      ].join("@")
    )
  end
end

def display_results
  puts
  puts '-------------------------------'
  puts 'Seed results:'
  puts '-------------------------------'
  puts "Contact: #{Contact.count}"
end

contact_creator
display_results
