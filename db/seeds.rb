
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
u6 = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(min_length: 8),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
# End of database seeding
puts "Finished seeding users"



#create island maurice
i1 = Island.create!(
  name: "Mauritius",
  latitude: -20.348404,
  longitude: 57.552152,
  address: "Butte de Sable, Mauritius",
  cul_diversity:"Known for its vibrant cultural mix, where French, English, and Creole blend in harmony.",
  geo_features:"Famous for its stunning coral reefs, picturesque beaches, and iconic mountain peaks like Le Morne Brabant.",
  access_transport:"Getting around is as easy as riding a giant tortoise – just watch out for traffic jams of dodos.",
  practical_info:"Don't be surprised if you find yourself speaking Creole with an exaggerated French accent by the end of the trip.",
  description:"Welcome to Mauritius, where azure waters meet vibrant cultures in a harmonious blend of paradise. Explore pristine beaches, lush landscapes, and a melting pot of languages and traditions that will leave you enchanted.",
  title: "Where Paradise Meets Culture",
)
#create island reunion
i2 = Island.create!(
  name: "Reunion",
  latitude: -21.115141,
  longitude: 55.536384,
  address: "Piton de la Fournaise, Reunion",
  cul_diversity:"Embrace the island's Creole culture while practicing your volcano dodging skills – the piton de la Fournaise might erupt at any moment!",
  geo_features:"Prepare for jaw-dropping scenery, from towering peaks to lush forests and cascading waterfalls.",
  access_transport:"Transportation on Reunion is like riding a rollercoaster – except the rollercoaster is a mountain road and the seats are on fire.",
  practical_info:"Pack your hiking boots and your sense of adventure – you're going to need both to navigate Reunion's rugged terrain.",
  description:"Discover the thrill of adventure on the island of Reunion, where rugged mountains, lush forests, and fiery volcanoes beckon explorers. Immerse yourself in a world of natural wonders and adrenaline-pumping experiences.",
  title:"Where Adventures Awaits",
)
#create island madagascar
i3 = Island.create!(
  name: "Madagascar",
  latitude: -18.879190,
  longitude: 47.507905,
  address: "Avenue of the Baobabs, Madagascar",
  cul_diversity:"A melting pot of cultures, languages, and traditions, where lemurs might teach you Malagasy and French or a new dance move.",
  geo_features:"Home to unique flora and fauna, from baobab trees to playful crocodiles.",
  access_transport:"Transportation options include hitching a ride on a passing zébu (strongly recommended).",
  practical_info:"Bring your camera for wildlife spotting adventure and a pocket translator.",
  description:"Step into a world of wonder on the island of Madagascar, where biodiversity thrives and adventure awaits at every turn. From lemurs to baobabs, prepare to be captivated by the island's unique wildlife and stunning landscapes.",
  title:"Where Biodiversity Thrives",
)
#create island seychelles
i4 = Island.create!(
  name: "Rodrigues",
  latitude: -19.6744,
  longitude: 63.4321,
  address: "Anse Mourouk, Rodrigues",
  cul_diversity:"A linguistic mosaic where 'hello' is just the beginning of a conversation that might end with a sega dance-off.",
  geo_features:"From turquoise lagoons to rugged cliffs, Rodrigues is Mother Nature's way of showing off – just don't forget to bring your snorkel and your hiking boots.",
  access_transport:"Getting around Rodrigues is like playing 'The Amazing Race' – just hop on a bicycle and pedal like your life depends on it.",
  practical_info:"Pack light and pack smart – you never know when you might need to outrun a giant crab or negotiate with a coconut crab for the best spot on the beach.",
  description:"Escape to the tranquil paradise of Rodrigues, where turquoise lagoons, rugged cliffs, and laid-back vibes create the perfect setting for relaxation and adventure. Discover a world of natural beauty and warm hospitality on this idyllic island retreat.",
  title:"Where Simplicity Meets Nature ",
)
#create island comores
i5 = Island.create!(
  name: "Comores",
  latitude: -11.645500,
  longitude: 43.333300,
  address: "Dos du Dragon, Comores",
  cul_diversity:"A vibrant cultural heritage with a blend of African, Arab, and French influences, reflected in its architecture, cuisine, and music.",
  geo_features:"Explore volcanic islands, hidden beaches, and colorful coral reefs – just watch out for the occasional pirate ship.",
  access_transport:"Need a lift? Try hitching a ride on a passing dolphin (dolphin training not provided).",
  practical_info:"Don't be alarmed if your tour guide stops mid-sentence to take a selfie with a giant tortoise – it's just another day in paradise.",
  description:"Journey to the enchanting islands of Comoros, where ancient traditions, lush landscapes, and untouched beauty transport you to a world untouched by time. Lose yourself in the rhythm of island life and discover the magic of Comoros.",
  title:"Where Time Stands Still",
)
#create island mayotte
i6 = Island.create!(
  name: "Mayotte",
  latitude: -12.827500,
  longitude: 45.166244,
  address: "Mtsanga Fanou, Mayotte",
  cul_diversity:"Dive into the unique blend of French and Mahorian culture, where baguettes and coconut water are equally cherished.",
  geo_features:"Discover coral reefs, lagoons, and lush forests, where turtles and dolphins play hide and seek.",
  access_transport:"Transportation in Mayotte is a breeze – just ride the waves on a giant sea turtle (sea turtle rental not available).",
  practical_info:"Don't be surprised if your taxi driver doubles as a guide and a DJ – Mayotte is full of surprises.",
  description:"Escape to the tropical paradise of Mayotte, where crystal-clear waters, colorful coral reefs, and warm hospitality await. Dive into a world of underwater wonders and cultural delights on this hidden gem of the Indian Ocean.",
  title:"Where Hospitality Await",
)
#end island
puts "Finished seeding isdlands"


#create booking

b1 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u1.id, start_island_id: i1.id, end_island_id: i2.id, adults: 0, kids: 0, baggages: 2, pets: 0)
b2 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u2.id, start_island_id: i2.id, end_island_id: i3.id, adults: 1, kids: 0, baggages: 2, pets: 0)
b3 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u3.id, start_island_id: i3.id, end_island_id: i4.id, adults: 2, kids: 1, baggages: 2, pets: 1)
b4 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u4.id, start_island_id: i4.id, end_island_id: i5.id, adults: 3, kids: 0, baggages: 2, pets: 2)
b5 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u5.id, start_island_id: i5.id, end_island_id: i6.id, adults: 1, kids: 0, baggages: 2, pets: 0)
b6 = Booking.create!(start_date: "2024-05-01 00:00:00", user_id: u6.id, start_island_id: i6.id, end_island_id: i1.id, adults: 2, kids: 2, baggages: 2, pets: 1)
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

Review.create!(
  booking_id: b6.id,
  island: b6.end_island,
  comment: "Incredible experience ! Lost few shoes on the way but at the didn’t need them as the beaches were calling us.",
  rating: 5
)
