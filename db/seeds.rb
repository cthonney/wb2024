
# Clean the database
puts "Cleaning the database..."

Review.destroy_all
Booking.destroy_all
Island.destroy_all
User.destroy_all


# Create users
puts "Creating users..."
#u1 = User.create!(email: "user@webcup.com", password: "p@ssword", first_name: "User", last_name: "User2")
u0 = User.create!(email: "admin@webcup.com", password: "p@ssword", admin: true, first_name: "Admin", last_name: "Admin2")
u1 = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(min_length: 8),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
u2 = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(min_length: 8),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
u3 = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(min_length: 8),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
u4 = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(min_length: 8),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
u5 = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(min_length: 8),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
# End of database seeding
puts "Finished seeding users"



#create island maurice
i1 = Island.create!(name: "Maurice", latitude: -20.348404, longitude: 57.552152, address: "Maurice")
#create island reunion
i2 = Island.create!(name: "Reunion", latitude: -21.115141, longitude: 55.536384, address: "Reunion")
#create island madagascar
i3 = Island.create!(name: "Madagascar", latitude: -18.879190, longitude: 47.507905, address: "Madagascar")
#create island seychelles
i4 = Island.create!(name: "Seychelles", latitude: -4.679574, longitude: 55.491977, address: "Seychelles")
#create island comores
i5 = Island.create!(name: "Comores", latitude: -11.645500, longitude: 43.333300, address: "Comores")
#create island mayotte
i6 = Island.create!(name: "Mayotte", latitude: -12.827500, longitude: 45.166244, address: "Mayotte")
#end island
puts "Finished seeding isdlands"


#create booking

b1 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u1.id, start_island_id: i1.id, end_island_id: i2.id, adults: 2, kids: 1, baggages: 2, pets: 1)
b2 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u2.id, start_island_id: i2.id, end_island_id: i3.id, adults: 2, kids: 1, baggages: 2, pets: 1)
b3 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u3.id, start_island_id: i3.id, end_island_id: i4.id, adults: 2, kids: 1, baggages: 2, pets: 1)
b4 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u4.id, start_island_id: i4.id, end_island_id: i5.id, adults: 2, kids: 1, baggages: 2, pets: 1)
b5 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u5.id, start_island_id: i5.id, end_island_id: i6.id, adults: 2, kids: 1, baggages: 2, pets: 1)
puts "Finished seeding bookings"

puts "Finished seeding the database"

#create reviews

Review.create!(
  booking_id: b1.id,
  island: b1.end_island,
  comment: "The island breathtaking landscapes and unique wildlife made it a paradise for nature lovers like me. Teleportation truly made this trip a breeze!",
  rating: 5
)
Review.create!(
  booking_id: b2.id,
  island: b2.end_island,
  comment: "Thanks to teleportation, this trip was smooth sailing from start to finish! Event got a new hair color during the teleportation.",
  rating: 4
)
Review.create!(
  booking_id: b3.id,
  island: b3.end_island,
  comment: "I was literally  blown away by the teleportation travel. But the island pristine beaches, turquoise lagoons, and charming local vibe made it a true paradise experience.",
  rating: 4
)
Review.create!(
  booking_id: b4.id,
  island: b4.end_island,
  comment: "Teleportation travel was like stepping into a postcard! It left me with more time to soak up the beauty of the island.",
  rating: 5
)
Review.create!(
  booking_id: b5.id,
  island: b5.end_island,
  comment: "Incredible experience ! Lost few shoes on the way but at the didn’t need them as the beaches were calling us.",
  rating: 4
)
