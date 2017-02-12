# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
100.times do 
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Student.create(first_name: first_name,
                last_name: last_name,
                email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                birthdate: Faker::Date.between(22.years.ago, 18.years.ago),
                university: Faker::University.name, 
                pokemon: Faker::Pokemon.name
    )
end

100.times do
  Address.create(street_address: Faker::Address.street_address,
                city: Faker::Address.city,
                state: Faker::Address.state,
                zip: Faker::Address.zip,
                country: Faker::Address.country,
                student_id: Student.all.sample.id
    )
end
puts "Database successfully purged and seeded!"