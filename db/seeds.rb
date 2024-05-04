
# Clean the database
puts "Cleaning the database..."


Booking.destroy_all
Island.destroy_all
User.destroy_all


# Create users
puts "Creating users..."
User.create!(email: "user@webcup.com", password: "p@ssword", first_name: "User", last_name: "User2")
User.create!(email: "admin@webcup.com", password: "p@ssword", admin: true, first_name: "Admin", last_name: "Admin2")

# End of database seeding
puts "Finished seeding the database"



#create island maurice
Island.create!(name: "Maurice", latitude: -20.348404, longitude: 57.552152, address: "Maurice")
#create island reunion
Island.create!(name: "Reunion", latitude: -21.115141, longitude: 55.536384, address: "Reunion")
#create island madagascar
Island.create!(name: "Madagascar", latitude: -18.879190, longitude: 47.507905, address: "Madagascar")
#create island seychelles
Island.create!(name: "Seychelles", latitude: -4.679574, longitude: 55.491977, address: "Seychelles")
#create island comores
Island.create!(name: "Comores", latitude: -11.645500, longitude: 43.333300, address: "Comores")
#create island mayotte
Island.create!(name: "Mayotte", latitude: -12.827500, longitude: 45.166244, address: "Mayotte")
#end island
puts "Finished seeding isdlands"


#create booking

Booking.create!(start_date: "2024-05-01 00:00:00", end_date: "2024-05-10 00:00:00", user_id: 1, start_island_id: 1, end_island_id: 2)
Booking.create!(start_date: "2024-05-01 00:00:00", end_date: "2024-05-10 00:00:00", user_id: 1, start_island_id: 2, end_island_id: 3)
Booking.create!(start_date: "2024-05-01 00:00:00", end_date: "2024-05-10 00:00:00", user_id: 1, start_island_id: 3, end_island_id: 4)
Booking.create!(start_date: "2024-05-01 00:00:00", end_date: "2024-05-10 00:00:00", user_id: 1, start_island_id: 4, end_island_id: 5)
Booking.create!(start_date: "2024-05-01 00:00:00", end_date: "2024-05-10 00:00:00", user_id: 1, start_island_id: 5, end_island_id: 6)
puts "Finished seeding bookings"
