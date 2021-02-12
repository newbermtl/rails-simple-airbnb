# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Removing all flats"

Flat.delete_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  picture: "https://source.unsplash.com/featured/?house",
  number_of_guests: 3
)

puts "#{Flat.last.name} created!"

Flat.create!(
  name: 'Dark and Grimey Flat in the USSR',
  address: '666 Dark Alley Road Vladivostok W9 1DT',
  description: 'Ewwwww, not nice',
  price_per_night: 10,
  picture: "https://source.unsplash.com/featured/?house",
  number_of_guests: 2
)

puts "#{Flat.last.name} created!"


Flat.create!(
  name: 'Humid and Wet underwater cave',
  address: 'Somewhere under the Atlantic, London W9 1DT',
  description: 'Underwater cave, make sure to bring your own oxygen tanks',
  price_per_night: 175,
  picture: "https://source.unsplash.com/featured/?house",
  number_of_guests: 30
)

puts "#{Flat.last.name} created!"


Flat.create!(
  name: 'The Montreal Olympic Stadium',
  address: '10 Sherbrooke street Montreal W9 1DT',
  description: 'Its shaped like a toilet bowl, who could have thought this was a good idea...',
  price_per_night: 75_000,
  picture: "https://source.unsplash.com/featured/?house",
  number_of_guests: 30_000
)

puts "#{Flat.last.name} created!"
