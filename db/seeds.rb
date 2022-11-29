# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning the DB 🧹🧹'
User.destroy_all
puts '___________________________'
puts 'The DB is cleaned !'
puts '___________________________'
puts ' '
puts ' '
puts 'Creation of users 😊'

charlene = User.create!(
  first_name: "Charlene",
  last_name: "Nicol",
  address: "75 cité Dufau, 64170 Artix",
  email: 'charln.nicol@gmail.com',
  password: 'azerty'
)

puts "1️⃣ new user : #{charlene.first_name}"

antoine = User.create!(
  first_name: "Antoine",
  last_name: "Berson",
  address: "33 rue Beaufleury, 33000 Bordeaux",
  email: 'antoine.berson01@gmail.com',
  password: 'azerty'
)

puts "1️⃣ new user : #{antoine.first_name}"

aimeric = User.create!(
  first_name: "Aimeric",
  last_name: "Marchau",
  email: 'marchauaimeric@gmail.com',
  address: "2 rue de Bethmann, 33100 Bordeaux",
  password: 'azerty'
)

puts "1️⃣ new user : #{aimeric.first_name}"

georges = User.create!(
  first_name: "Georgy",
  last_name: "Ryssen",
  address: "20 rue de Cénac, 33100 Bordeaux",
  email: 'georges.ryssen@gmail.com',
  password: 'azerty'
)

puts "1️⃣ new user : #{georges.first_name}"

puts 'Users created 🔥!'
puts '___________________________'
puts ' '
puts ' '
puts 'Creation of 1 restaurant 👨🏻 !'

restaurant = Restaurant.create!(
  name: 'Peponne',
  address: '9 Quai Richelieu, 33000 Bordeaux',
  phone: '05 56 30 25 25',
  user: antoine
)

puts 'Antoine has created his restaurant : Peponne 🔥!'
puts '___________________________'
puts ' '
puts ' '
puts 'Creation of meals for the Peponne 🍕!'

meal_1 = Meal.new(
  name: 'Insalata',
  category: 'Italien',
  price: 11.95,
  description: 'Tomate, mozzarelle, pesto, courgette, salade',
  restaurant: restaurant
)

file_m1 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669730655/foodR%20seed/Insalata_z2rf9i.png")
meal_1.photo.attach(io: file_m1, filename: "Insalata.png", content_type: "image/png")

meal_1.save

puts "1️⃣ new meal : #{meal_1.name} "

meal_2 = Meal.new(
  name: 'Spaghetti alla puttanesca',
  category: 'Italien',
  price: 13.95,
  description: 'Spaghettis tradtionnelles, tomate, câpres, parmesan, persil, ail, piment oiseaux',
  restaurant: restaurant
)

file_m2 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669731293/foodR%20seed/Spaghetti_alla_puttanesca_tojckb.png")
meal_2.photo.attach(io: file_m2, filename: "Spaghetti alla puttanesca.png", content_type: "image/png")

meal_2.save

puts "1️⃣ new meal : #{meal_2.name} "


meal_3 = Meal.new(
  name: 'Pizza aux anchois',
  category: 'Italien',
  price: 14.75,
  description: 'Tomate, mozzarella, olives, anchois, oignions rouges, éperlan',
  restaurant: restaurant
)

file_m3 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669731287/foodR%20seed/Pizza_aux_anchois_nowu6y.png")
meal_3.photo.attach(io: file_m3, filename: "Pizza aux anchois.png", content_type: "image/png")

meal_3.save

puts "1️⃣ new meal : #{meal_3.name} "

meal_4 = Meal.new(
  name: 'Poutine italienne',
  category: 'Italien',
  price: 13.45,
  description: 'Pomme de terre grelots, fromage en grains, sauce pimentée, truffes ',
  restaurant: restaurant
)

file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669731292/foodR%20seed/Poutine_italienne_xfmudo.png")
meal_4.photo.attach(io: file_m4, filename: "Poutine italienne.png", content_type: "image/png")

meal_4.save

puts "1️⃣ new meal : #{meal_4.name} "

meal_5 = Meal.new(
  name: 'Crème de tomates rôties',
  category: 'Italien',
  price: 12.95,
  description: 'Tomate, carotte, oignons, basilic, croûtons maison',
  restaurant: restaurant
)

file_m5 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669731295/foodR%20seed/Cr%C3%A8me_de_tomates_r%C3%B4ties_suh2qs.png")
meal_5.photo.attach(io: file_m5, filename: "Crème de tomates rôties.png", content_type: "image/png")

meal_5.save

puts "1️⃣ new meal : #{meal_5.name} "


puts '5 meals added to Peponne restaurant 🔥!'
puts '___________________________'
puts ' '
puts ' '
puts 'Creation of favorites ♥️ !'

favorite_1 = Favorite.create!(
  like: true,
  superlike: false,
  eaten: false,
  user: georges,
  meal: meal_5
)

puts "1️⃣ new favorite"

favorite_2 = Favorite.create!(
  like: true,
  superlike: true,
  eaten: false,
  user: charlene,
  meal: meal_2
)

puts "1️⃣ new favorite"

favorite_3 = Favorite.create!(
  like: true,
  superlike: false,
  eaten: false,
  user: aimeric,
  meal: meal_2
)

puts "1️⃣ new favorite"

favorite_4 = Favorite.create!(
  like: true,
  superlike: true,
  eaten: true,
  user: antoine,
  meal: meal_1
)

puts "1️⃣ new favorite"

favorite_5 = Favorite.create!(
  like: true,
  superlike: false,
  eaten: false,
  user: georges,
  meal: meal_3
)

puts "1️⃣ new favorite"

puts '5 favorites added 🔥!'
puts '___________________________'
puts '___________________________'
puts 'Creation of bookings ⏰ !'

booking_1 = Booking.create!(
  date: DateTime.new(2022, 12, 12, 20, 30, 0),
  user: georges,
  meal: meal_3,
  number_people: 1
)

puts "1️⃣ new booking"

booking_2 = Booking.create!(
  date: DateTime.new(2022, 11, 27, 19, 15, 0),
  user: aimeric,
  meal: meal_5,
  number_people: 2
)

puts "1️⃣ new booking"

booking_3 = Booking.create!(
  date: DateTime.new(2022, 12, 03, 14, 0, 0),
  user: charlene,
  meal: meal_5,
  number_people: 2
)

puts "1️⃣ new booking"

puts '5 favorites added 🔥!'
puts '___________________________'
puts ' '
puts ' '
puts 'The END 🏁'
puts ' '
