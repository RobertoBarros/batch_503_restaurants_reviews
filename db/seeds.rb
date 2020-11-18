10.times do
  Restaurant.create!(name: Faker::Restaurant.name,
                     address: Faker::Address.full_address,
                     stars: rand(1..10),
                     chef: Faker::Name.name)
end
