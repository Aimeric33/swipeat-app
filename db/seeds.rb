# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning the DB 🧹🧹'
Favorite.destroy_all
Booking.destroy_all
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
  password: 'azerty',
  owner: true
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

paul = User.create!(
  first_name: "Paul",
  last_name: "Milet",
  address: "2 Rue Courbin, 33000 Bordeaux",
  email: 'paul@gmail.com',
  password: 'azerty',
  owner: true
)

puts "1️⃣ new user : #{paul.first_name}"

camille = User.create!(
  first_name: "Camille",
  last_name: "Poudon",
  address: "9 Place Jean Jaurès, 33000 Bordeaux",
  email: 'camille@gmail.com',
  password: 'azerty',
  owner: true
)

puts "1️⃣ new user : #{camille.first_name}"

romain = User.create!(
  first_name: "Romain",
  last_name: "Pichou",
  address: "4 Pl. des Quinconces, 33000 Bordeaux",
  email: 'romain@gmail.com',
  password: 'azerty',
  owner: true
)

puts "1️⃣ new user : #{romain.first_name}"

puts 'Users created 🔥!'
puts '___________________________'
puts ' '
puts ' '

# begining of Antoine Restaurant and meals
puts 'Creation of Antoine restaurant 👨🏻 !'

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
    category: 'italien',
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
    category: 'italien',
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
    category: 'italien',
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
    category: 'italien',
    price: 13.45,
    description: 'Pomme de terre grelots, fromage en grains, sauce pimentée, truffes ',
    restaurant: restaurant
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669731292/foodR%20seed/Poutine_italienne_xfmudo.png")
  meal_4.photo.attach(io: file_m4, filename: "Poutine itlienne.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: 'Crème de tomates rôties',
    category: 'italien',
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
# end of Antoine Restaurant and meals

# begining of Paul Restaurant and meals
puts 'Creation of Paul restaurant 👨🏻 !'

  restaurant_paul = Restaurant.create!(
    name: 'Le Bouchon',
    address: '2 Rue Courbin, 33000 Bordeaux',
    phone: '05 56 44 33 00',
    user: paul
  )

  puts 'Paul has created his restaurant : Le Bouchon 🔥!'
  puts '___________________________'
  puts ' '
  puts ' '
  puts 'Creation of meals for Le Bouchon 🍕!'

  meal_1 = Meal.new(
    name: 'Foie gras mi-cuit',
    category: 'brasserie',
    price: 13.40,
    description: 'Foie gras de canard mi-cuit fait maison avec salade',
    restaurant: restaurant_paul
  )

  file_m1 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988345/foodR%20seed/Foie_gras_mi-cuit_qhskr9.png")
  meal_1.photo.attach(io: file_m1, filename: "Foie-gras.png", content_type: "image/png")

  meal_1.save

  puts "1️⃣ new meal : #{meal_1.name} "

  meal_2 = Meal.new(
    name: 'Côte de boeuf',
    category: 'brasserie',
    price: 21.50,
    description: 'Côte de bœuf <350 g servi avec frites maison et salade fraîche',
    restaurant: restaurant_paul
  )

  file_m2 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988321/foodR%20seed/Cote_de_boeuf_mtkwmt.png")
  meal_2.photo.attach(io: file_m2, filename: "cote.png", content_type: "image/png")

  meal_2.save

  puts "1️⃣ new meal : #{meal_2.name} "


  meal_3 = Meal.new(
    name: 'Camembert au lait cru',
    category: 'brasserie',
    price: 13.50,
    description: 'Un fromage d’exception, réalisé dans le respect des traditions des maîtres fromagers',
    restaurant: restaurant_paul
  )

  file_m3 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988367/foodR%20seed/Camembert_au_lait_cru_quwk7w.png")
  meal_3.photo.attach(io: file_m3, filename: "camembert.png", content_type: "image/png")

  meal_3.save

  puts "1️⃣ new meal : #{meal_3.name} "

  meal_4 = Meal.new(
    name: "Souris d'agneau braisée",
    category: 'brasserie',
    price: 19.80,
    description: "Braisée dans son jus, servi avec des pommes grenailles et des légumes",
    restaurant: restaurant_paul
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988385/foodR%20seed/Souris_d_agneau_brais%C3%A9e_p1sqre.png")
  meal_4.photo.attach(io: file_m4, filename: "souris_agneau.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: 'Boudin noir aux pommes',
    category: 'brasserie',
    price: 15.80,
    description: "Boudin d'origine française servi avec des pommes grenailles et des légumes",
    restaurant: restaurant_paul
  )

  file_m5 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988404/foodR%20seed/Boudin_noir_aux_pommes_kdepk0.png")
  meal_5.photo.attach(io: file_m5, filename: "xx.png", content_type: "image/png")

  meal_5.save

  puts "1️⃣ new meal : #{meal_5.name} "


  puts '5 meals added to Le Bouchon restaurant 🔥!'
  puts '___________________________'
  puts ' '
  puts ' '
# end of Paul Restaurant and meals

# begining of Camille Restaurant and meals
puts 'Creation of Camille restaurant 👨🏻 !'

  restaurant_camille = Restaurant.create!(
    name: 'Mokoji',
    address: '45 Rue du Pas-Saint-Georges, 33000 Bordeaux',
    phone: '09 83 67 09 85',
    user: camille
  )

  puts 'Camille has created his restaurant : Mokoji 🔥!'
  puts '___________________________'
  puts ' '
  puts ' '
  puts 'Creation of meals for Mokoji 🍕!'

  meal_1 = Meal.new(
    name: 'Poulet croustillant caramel',
    category: 'coréen',
    price: 11.50,
    description: 'Délicieuse cuisse de poulet désossée puis panée, servi avec 1 Sauce caramel et du riz nature',
    restaurant: restaurant_camille
  )

  file_m1 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988103/foodR%20seed/Poulet_croustillant_caramel_akcaww.png")
  meal_1.photo.attach(io: file_m1, filename: "Poulet.png", content_type: "image/png")

  meal_1.save

  puts "1️⃣ new meal : #{meal_1.name} "

  meal_2 = Meal.new(
    name: 'Nouilles sautées crevettes',
    category: 'coréen',
    price: 12.50,
    description: 'Nouilles de blé sautées aux crevettes, assortiment de légumes et sauce maison',
    restaurant: restaurant_camille
  )

  file_m2 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988004/foodR%20seed/Nouilles_saut%C3%A9es_crevettes_ufofqf.png")
  meal_2.photo.attach(io: file_m2, filename: "Nouilles.png", content_type: "image/png")

  meal_2.save

  puts "1️⃣ new meal : #{meal_2.name} "


  meal_3 = Meal.new(
    name: 'Bò bún au bœuf',
    category: 'coréen',
    price: 10.50,
    description: 'Le bò bún est un type de salade vietnamienne de vermicelles de riz servie froide et chaude. vermicelles de riz, bœuf sauté, légumes, nems au poulet et cacahuètes.',
    restaurant: restaurant_camille
  )

  file_m3 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988130/foodR%20seed/B%C3%B2_b%C3%BAn_au_b%C5%93uf_jcynlr.png")
  meal_3.photo.attach(io: file_m3, filename: "Bobun.png", content_type: "image/png")

  meal_3.save

  puts "1️⃣ new meal : #{meal_3.name} "

  meal_4 = Meal.new(
    name: 'Boeuf loc lac',
    category: 'coréen',
    price: 11.80,
    description: "Bœuf saisi au teppanyaki 'plancha japonaise' avec 1 sauce maison, accompagné de légumes, de riz thaï à la sauce tomate",
    restaurant: restaurant_camille
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988156/foodR%20seed/B%C5%93uf_loc_lac_lydkem.png")
  meal_4.photo.attach(io: file_m4, filename: "loclac.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: 'Poulet sauté teppanyaki',
    category: 'coréen',
    price: 11.80,
    description: 'Délicieuse cuisse de poulet désossée saisie au teppanyaki avec 1 sauce maison, accompagné de légumes, de riz thaï',
    restaurant: restaurant_camille
  )

  file_m5 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988426/foodR%20seed/Poulet_saut%C3%A9_teppanyaki_pdpyhe.png")
  meal_5.photo.attach(io: file_m5, filename: "Poulet.png", content_type: "image/png")

  meal_5.save

  puts "1️⃣ new meal : #{meal_5.name} "


  puts '5 meals added to Peponne restaurant 🔥!'
  puts '___________________________'
  puts ' '
  puts ' '
# end of Camille Restaurant and meals

# begining of Romain Restaurant and meals
puts 'Creation of Romain restaurant 👨🏻 !'

  restaurant_romain = Restaurant.create!(
    name: 'Pokawa',
    address: '21 Rue Georges Bonnac, 33000 Bordeaux',
    phone: '0556938974',
    user: romain
  )

  puts 'Romain has created his restaurant : Pokawa 🔥!'
  puts '___________________________'
  puts ' '
  puts ' '
  puts 'Creation of meals for Pokawa 🍕!'

  meal_1 = Meal.new(
    name: 'Poké Saumon',
    category: 'asiatique',
    price: 11.90,
    description: 'Base au choix, saumon frais, fruit au choix, avocat, edamame, carotte, radis, concombre, chou rouge, graines de sésame et framboise.',
    restaurant: restaurant_romain
  )

  file_m1 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988203/foodR%20seed/Poke_Saumon_mskrsn.png")
  meal_1.photo.attach(io: file_m1, filename: "Poké.png", content_type: "image/png")

  meal_1.save

  puts "1️⃣ new meal : #{meal_1.name} "

  meal_2 = Meal.new(
    name: 'Chirashi Saumon Avocat',
    category: 'asiatique',
    price: 13.90,
    description: 'Base au choix, saumon frais, avocat, cébette thaï, graines de sésame.',
    restaurant: restaurant_romain
  )

  file_m2 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988224/foodR%20seed/Chirashi_Saumon_Avocat_dg7llz.png")
  meal_2.photo.attach(io: file_m2, filename: "Chirashi.png", content_type: "image/png")

  meal_2.save

  puts "1️⃣ new meal : #{meal_2.name} "


  meal_3 = Meal.new(
    name: 'Poké Thon Mariné',
    category: 'asiatique',
    price: 11.90,
    description: 'Base au choix, thon mariné*, fruit au choix, radis, concombre, carottes, avocat, edamame, chou rouge, graines de sésame et framboise.',
    restaurant: restaurant_romain
  )

  file_m3 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988247/foodR%20seed/Pok%C3%A9_Thon_Marin%C3%A9_clwjm1.png")
  meal_3.photo.attach(io: file_m3, filename: "Thon.png", content_type: "image/png")

  meal_3.save

  puts "1️⃣ new meal : #{meal_3.name} "

  meal_4 = Meal.new(
    name: 'Poké Falafels',
    category: 'asiatique',
    price: 10.90,
    description: 'Base au choix, falafels, fruit au choix, radis, carottes, avocat, edamame, chou rouge, graines de sésame et framboise.',
    restaurant: restaurant_romain
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988271/foodR%20seed/Pok%C3%A9_Falafels_hxem9d.png")
  meal_4.photo.attach(io: file_m4, filename: "Falafels.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: "Veggie Chick'en Bowl",
    category: 'asiatique',
    price: 11.90,
    description: "Base de riz vinaigré, beaux morceaux de chick'en Happyvore, avocat, mangue, edamame, concombre, noix de cajou, cebette thai et sésame.",
    restaurant: restaurant_romain
  )

  file_m5 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988302/foodR%20seed/Veggie_Chick_en_Bowl_fyy1wf.png")
  meal_5.photo.attach(io: file_m5, filename: "Veggie.png", content_type: "image/png")

  meal_5.save

  puts "1️⃣ new meal : #{meal_5.name} "


  puts '5 meals added to Peponne restaurant 🔥!'
  puts '___________________________'
  puts ' '
  puts ' '
# end of Romain Restaurant and meals


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
puts ' '
puts ' '
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

puts '3 bookings added 🔥!'
puts '___________________________'
puts ' '
puts ' '
puts 'The END 🏁'
puts ' '
