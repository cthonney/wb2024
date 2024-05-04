
# Clean the database
puts "Cleaning the database..."

User.destroy_all

# Create users
puts "Creating users..."
User.create!(email: "user@webcup.com", password: "p@ssword", first_name: "User", last_name: "User2")
User.create!(email: "admin@webcup.com", password: "p@ssword", admin: true, first_name: "Admin", last_name: "Admin2")

# End of database seeding
puts "Finished seeding the database"
