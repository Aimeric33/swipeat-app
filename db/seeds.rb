# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning the DB 🧹🧹'
Favorite.destroy_all
Message.destroy_all
Chatroom.destroy_all
Booking.destroy_all
Restaurant.destroy_all
User.destroy_all
puts '___________________________'
puts 'The DB is cleaned !'
puts '___________________________'
puts ' '
puts ' '

# begining of users
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
# end of users

# begining of Antoine Restaurant and meals
puts 'Creation of Antoine restaurant 👨🏻 !'

  restaurant = Restaurant.create!(
    name: 'Peponne',
    address: '122 Rue de la Benauge, 33100 Bordeaux',
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
    restaurant: restaurant,
    position: 1
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
    restaurant: restaurant,
    position: 2
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
    restaurant: restaurant,
    position: 3
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
    restaurant: restaurant,
    position: 4
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669731292/foodR%20seed/Poutine_italienne_xfmudo.png")
  meal_4.photo.attach(io: file_m4, filename: "Poutine itlienne.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: 'Crème de tomates rôties',
    category: 'Italien',
    price: 12.95,
    description: 'Tomate, carotte, oignons, basilic, croûtons maison',
    restaurant: restaurant,
    position: 5
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
    address: '41 Rue Denise, 33000 Bordeaux',
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
    category: 'Brasserie',
    price: 13.40,
    description: 'Foie gras de canard mi-cuit fait maison avec salade',
    restaurant: restaurant_paul,
    position: 1
  )

  file_m1 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988345/foodR%20seed/Foie_gras_mi-cuit_qhskr9.png")
  meal_1.photo.attach(io: file_m1, filename: "Foie-gras.png", content_type: "image/png")

  meal_1.save

  puts "1️⃣ new meal : #{meal_1.name} "

  meal_2 = Meal.new(
    name: 'Côte de boeuf',
    category: 'Brasserie',
    price: 21.50,
    description: 'Côte de bœuf <350 g servi avec frites maison et salade fraîche',
    restaurant: restaurant_paul,
    position: 2
  )

  file_m2 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988321/foodR%20seed/Cote_de_boeuf_mtkwmt.png")
  meal_2.photo.attach(io: file_m2, filename: "cote.png", content_type: "image/png")

  meal_2.save

  puts "1️⃣ new meal : #{meal_2.name} "


  meal_3 = Meal.new(
    name: 'Camembert au lait cru',
    category: 'Brasserie',
    price: 13.50,
    description: 'Un fromage d’exception, réalisé dans le respect des traditions des maîtres fromagers',
    restaurant: restaurant_paul,
    position: 3
  )

  file_m3 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988367/foodR%20seed/Camembert_au_lait_cru_quwk7w.png")
  meal_3.photo.attach(io: file_m3, filename: "camembert.png", content_type: "image/png")

  meal_3.save

  puts "1️⃣ new meal : #{meal_3.name} "

  meal_4 = Meal.new(
    name: "Souris d'agneau braisée",
    category: 'Brasserie',
    price: 19.80,
    description: "Braisée dans son jus, servi avec des pommes grenailles et des légumes",
    restaurant: restaurant_paul,
    position: 4
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988385/foodR%20seed/Souris_d_agneau_brais%C3%A9e_p1sqre.png")
  meal_4.photo.attach(io: file_m4, filename: "souris_agneau.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: 'Boudin noir aux pommes',
    category: 'Brasserie',
    price: 15.80,
    description: "Boudin d'origine française servi avec des pommes grenailles et des légumes",
    restaurant: restaurant_paul,
    position: 5
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
    address: '18 Rue Tiffonet, 33800 Bordeaux',
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
    category: 'Coréen',
    price: 11.50,
    description: 'Délicieuse cuisse de poulet désossée puis panée, servi avec 1 Sauce caramel et du riz nature',
    restaurant: restaurant_camille,
    position: 1
  )

  file_m1 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988103/foodR%20seed/Poulet_croustillant_caramel_akcaww.png")
  meal_1.photo.attach(io: file_m1, filename: "Poulet.png", content_type: "image/png")

  meal_1.save

  puts "1️⃣ new meal : #{meal_1.name} "

  meal_2 = Meal.new(
    name: 'Nouilles sautées crevettes',
    category: 'Coréen',
    price: 12.50,
    description: 'Nouilles de blé sautées aux crevettes, assortiment de légumes et sauce maison',
    restaurant: restaurant_camille,
    position: 2
  )

  file_m2 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988004/foodR%20seed/Nouilles_saut%C3%A9es_crevettes_ufofqf.png")
  meal_2.photo.attach(io: file_m2, filename: "Nouilles.png", content_type: "image/png")

  meal_2.save

  puts "1️⃣ new meal : #{meal_2.name} "


  meal_3 = Meal.new(
    name: 'Bò bún au bœuf',
    category: 'Coréen',
    price: 10.50,
    description: 'Le bò bún est un type de salade vietnamienne de vermicelles de riz servie froide et chaude. vermicelles de riz, bœuf sauté, légumes, nems au poulet et cacahuètes.',
    restaurant: restaurant_camille,
    position: 3
  )

  file_m3 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988130/foodR%20seed/B%C3%B2_b%C3%BAn_au_b%C5%93uf_jcynlr.png")
  meal_3.photo.attach(io: file_m3, filename: "Bobun.png", content_type: "image/png")

  meal_3.save

  puts "1️⃣ new meal : #{meal_3.name} "

  meal_4 = Meal.new(
    name: 'Boeuf loc lac',
    category: 'Coréen',
    price: 11.80,
    description: "Bœuf saisi au teppanyaki 'plancha japonaise' avec 1 sauce maison, accompagné de légumes, de riz thaï à la sauce tomate",
    restaurant: restaurant_camille,
    position: 4
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988156/foodR%20seed/B%C5%93uf_loc_lac_lydkem.png")
  meal_4.photo.attach(io: file_m4, filename: "loclac.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: 'Poulet sauté teppanyaki',
    category: 'Coréen',
    price: 11.80,
    description: 'Délicieuse cuisse de poulet désossée saisie au teppanyaki avec 1 sauce maison, accompagné de légumes, de riz thaï',
    restaurant: restaurant_camille,
    position: 5
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
    name: 'Poke Saumon',
    category: 'Asiatique',
    price: 11.90,
    description: 'Base au choix, saumon frais, fruit au choix, avocat, edamame, carotte, radis, concombre, chou rouge, graines de sésame et framboise.',
    restaurant: restaurant_romain,
    position: 1
  )

  file_m1 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988203/foodR%20seed/Poke_Saumon_mskrsn.png")
  meal_1.photo.attach(io: file_m1, filename: "Poke.png", content_type: "image/png")

  meal_1.save

  puts "1️⃣ new meal : #{meal_1.name} "

  meal_2 = Meal.new(
    name: 'Chirashi Saumon Avocat',
    category: 'Asiatique',
    price: 13.90,
    description: 'Base au choix, saumon frais, avocat, cébette thaï, graines de sésame.',
    restaurant: restaurant_romain,
    position: 2
  )

  file_m2 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988224/foodR%20seed/Chirashi_Saumon_Avocat_dg7llz.png")
  meal_2.photo.attach(io: file_m2, filename: "Chirashi.png", content_type: "image/png")

  meal_2.save

  puts "1️⃣ new meal : #{meal_2.name} "


  meal_3 = Meal.new(
    name: 'Poke Thon Mariné',
    category: 'Asiatique',
    price: 11.90,
    description: 'Base au choix, thon mariné*, fruit au choix, radis, concombre, carottes, avocat, edamame, chou rouge, graines de sésame et framboise.',
    restaurant: restaurant_romain,
    position: 3
  )

  file_m3 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988247/foodR%20seed/Pok%C3%A9_Thon_Marin%C3%A9_clwjm1.png")
  meal_3.photo.attach(io: file_m3, filename: "Thon.png", content_type: "image/png")

  meal_3.save

  puts "1️⃣ new meal : #{meal_3.name} "

  meal_4 = Meal.new(
    name: 'Poke Falafels',
    category: 'Asiatique',
    price: 10.90,
    description: 'Base au choix, falafels, fruit au choix, radis, carottes, avocat, edamame, chou rouge, graines de sésame et framboise.',
    restaurant: restaurant_romain,
    position: 4
  )

  file_m4 = URI.open("https://res.cloudinary.com/dh774opzt/image/upload/v1669988271/foodR%20seed/Pok%C3%A9_Falafels_hxem9d.png")
  meal_4.photo.attach(io: file_m4, filename: "Falafels.png", content_type: "image/png")

  meal_4.save

  puts "1️⃣ new meal : #{meal_4.name} "

  meal_5 = Meal.new(
    name: "Veggie Chick'en Bowl",
    category: 'Asiatique',
    price: 11.90,
    description: "Base de riz vinaigré, beaux morceaux de chick'en Happyvore, avocat, mangue, edamame, concombre, noix de cajou, cebette thai et sésame.",
    restaurant: restaurant_romain,
    position: 5
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

# beginning of favorites
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
# end of favorites

# beginning of bookings
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
  puts '___________________________'
# end of bookings

# beginning of chatrooms
puts 'Creation of chatrooms 💬 !'

  chatroom_1 = Chatroom.create!(
    name: booking_1.user,
    booking_id: booking_1.id
  )

  puts "1️⃣ new chatroom"

  chatroom_2 = Chatroom.create!(
    name: booking_2.user,
    booking_id: booking_2.id
  )

  puts "1️⃣ new chatroom"

  chatroom_3 = Chatroom.create!(
    name: booking_3.user,
    booking_id: booking_3.id
  )

  puts "1️⃣ new Chatroom"

  puts '3 chatrooms added 🔥!'
  puts '___________________________'
  puts ' '
  puts ' '

# end of chatrooms

# hash with infos about 11 users, 11 restaurants, 3 meals per restaurant
users = [
  {
    first_name: "Perrine",
    last_name: "Dumont",
    address: "18 Rue Bourbon, 33300 Bordeaux",
    email: "perrine@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Tacos Factory",
        address: "18 Rue Bourbon, 33300 Bordeaux",
        phone: "05 56 30 86 79",
        meals: [
          {
            name: "Le Montagnard",
            category: "Fast food",
            price: 18.9,
            description: "Tenders, sauce au choix, gratiné raclette et lardons, frites et fromagère.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670408511/foodR%20seed/Le_Montagnard_nyk2xh.png"
          },
          {
            name: "Le Forestier",
            category: "Fast food",
            price: 12.5,
            description: "Viande hachée, sauce algérienne, gratiné cheddar, frites et sauce fromagère.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670408630/foodR%20seed/Le_Forestier_jvv1qc.png"
          },
          {
            name: "Le Légendaire",
            category: "Fast food",
            price: 13.2,
            description: "Cordon bleu, sauce barbecue, gratiné gouda, frites et sauce fromagère.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670408573/foodR%20seed/Le_L%C3%A9gendaire_ntybbf.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Clement",
    last_name: "Béranger",
    address: "34 Rue Pierre Trebod, 33300 Bordeaux",
    email: "clement@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "El Boco",
        address: "34 Rue Pierre Trebod, 33300 Bordeaux",
        phone: "05 32 30 98 41",
        meals: [
          {
            name: "Spice Up Your Life",
            category: "Végétarien",
            price: 14.5,
            description: "Le A Burger original avec une note épicée. Un steak veggie HappyVore de 100g coupé en deux et grillé pour encore plus de croustillant.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670409355/foodR%20seed/Spice_Up_Your_Life_wva6rv.png"
          },
          {
            name: "The Texan Hippie",
            category: "Végétarien",
            price: 17.9,
            description: "Le BBQ burger à son apogée. Deux délicieux steak végétaliens 'smashed' HappyVore pour permettre de faire ressortir leur extra-croustillance.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670409381/foodR%20seed/The_Texan_Hippie_l1k104.png"
          },
          {
            name: "Big Smoke",
            category: "Végétarien",
            price: 17.9,
            description: "Un burger ultra-fat de 'vegie' effiloché au BBQ , servi dans un bun légèrement grillé, avec de la coriandre.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670409418/foodR%20seed/Big_Smoke_ct1k80.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Danielle",
    last_name: "Caliport",
    address: "63 Rue Laroche, 33000 Bordeaux",
    email: "danielle@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Casa Faiola",
        address: "63 Rue Laroche, 33000 Bordeaux",
        phone: "05 25 30 86 87",
        meals: [
          {
            name: "Prosciutto E Funghi",
            category: "Italien",
            price: 19.3,
            description: "Sauce tomate San Marzano DOP, Grana Padano DOP, basilic frais, Mozzarella fior di latte d’Agerola.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670409626/foodR%20seed/Prosciutto_E_Funghi_o5g6fo.png"
          },
          {
            name: "Speckiale",
            category: "Italien",
            price: 13.8,
            description: "Sauce tomate San Marzano DOP, mozzarella fior di latte, Brie, Speck artisanal, origan, oignons rouges.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670409652/foodR%20seed/Speckiale_yxlvc1.png"
          },
          {
            name: "Margherita Giallo",
            category: "Italien",
            price: 18.4,
            description: "Mozzarella fior di latte d'Agerola, pomodorini del piennolo gialli, basilic frais.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670409602/foodR%20seed/Margherita_Giallo_xayyxi.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Emilie",
    last_name: "Duhamel",
    address: "126 Rue Abbé de l'Épée, 33000 Bordeaux",
    email: "emilie@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Wayo-Wayo",
        address: "126 Rue Abbé de l'Épée, 33000 Bordeaux",
        phone: "05 90 30 86 23",
        meals: [
          {
            name: "Poulet Coco",
            category: "Africain",
            price: 17.9,
            description: "Poulet fermier Label Rouge désossé & enrobé d'une délicieuse sauce coco maison aux petits poivrons rouges.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410043/foodR%20seed/Poulet_Coco_ecno4z.png"
          },
          {
            name: "Shop Suey Legumes",
            category: "Africain",
            price: 17.2,
            description: "Découvrez les saveurs uniques de ce wok de légumes croquants enrobés d'une sauce aigre douce aux ananas caramélisés !",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410020/foodR%20seed/Shop_Suey_Legumes_fggzjw.png"
          },
          {
            name: "Rougail Saucisses",
            category: "Africain",
            price: 17.8,
            description: "Saucisses fumées (médaille d’or au Concours Général Agricole 2018), rissolées puis revenues dans un savoureux mélange d’épices, tomates concassées bio.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410068/foodR%20seed/Rougail_Saucisses_rctiwr.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Fadi",
    last_name: "Zyneb",
    address: "35 Rue de Pessac, 33000 Bordeaux",
    email: "fadi@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Taj Mahal",
        address: "35 Rue de Pessac, 33000 Bordeaux",
        phone: "05 93 30 86 34",
        meals: [
          {
            name: "Poulet Shahi Korma",
            category: "Indien",
            price: 12.9,
            description: "Poulet désossé cuit avec une sauce aux amandes, pistaches et noix de cajou avec crème fraîche.servi avec riz nature.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410094/foodR%20seed/Poulet_Shahi_Korma_amdhun.png"
          },
          {
            name: "Poulet Palak",
            category: "Indien",
            price: 18.4,
            description: "Poulet désossé cuit avec épinard crémé et variété d'épices.servi avec riz nature.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410128/foodR%20seed/Poulet_Palak_qh4tmj.png"
          },
          {
            name: "Mixed Grill ",
            category: "Indien",
            price: 11,
            description: "Morceaux d'agneau tikka, poulet tikka, Sheikh kebab, Pakora, oignon bhajia et samossa légumes.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410153/foodR%20seed/Mixed_Grill_kyq0d7.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Gwanael",
    last_name: "Focard",
    address: "1 Quai Deschamps, 33100 Bordeaux",
    email: "gwanael@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "961 Beyrouth",
        address: "1 Quai Deschamps, 33100 Bordeaux",
        phone: "05 87 30 86 00",
        meals: [
          {
            name: "Kafta Grillée ",
            category: "Libanais",
            price: 14.9,
            description: "2 Brochettes de la viande hachée moelleuse - agneau / Bœuf - persil , oignon , mélange d'épices douces",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410704/foodR%20seed/Kafta_Grill%C3%A9e_hlxczt.png"
          },
          {
            name: "Chawarma Poulet Grillé",
            category: "Libanais",
            price: 12.8,
            description: "Emincé de Blanc de Poulet Fermier jaunes - label rouge - marinées dans des epices aux saveurs douces.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410684/foodR%20seed/Chawarma_Poulet_Grill%C3%A9_bjvaz5.png"
          },
          {
            name: "Chawarma Bœuf Grillé",
            category: "Libanais",
            price: 14.6,
            description: "Emincé de viande derace de bœuf mariné au épices aux saveurs douces.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410724/foodR%20seed/Chawarma_B%C5%93uf_Grill%C3%A9_hpy4os.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Hubert",
    last_name: "Idriss",
    address: "115 Rue Bouthier, 33000 Bordeaux",
    email: "hubert@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Adana Kebab",
        address: "115 Rue Bouthier, 33000 Bordeaux",
        phone: "05 56 25 17 21",
        meals: [
          {
            name: "Döner Kebab Poulet",
            category: "Turque",
            price: 12.9,
            description: "Wrap au poulet, frites et boisson au choix.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410760/foodR%20seed/D%C3%B6ner_Kebab_Poulet_tnuhtx.png"
          },
          {
            name: "Assiette Adana",
            category: "Turque",
            price: 17.6,
            description: "Adana, boulgour à la tomate et crudités",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410803/foodR%20seed/Assiette_Adana_u2ic2v.png"
          },
          {
            name: "Döner Kofta Agneau",
            category: "Turque",
            price: 16.3,
            description: "Kofta d'agneau à l'ail, laitue, tomates et oignons dans un wrap.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410783/foodR%20seed/D%C3%B6ner_Kofta_Agneau_ztpsln.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Joel",
    last_name: "Lord",
    address: "22 Rue Hortense, 33100 Bordeaux",
    email: "joel@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Gourmets d'Asie",
        address: "22 Rue Hortense, 33100 Bordeaux",
        phone: "05 56 00 86 08",
        meals: [
          {
            name: "Maki Et Brochette",
            category: "Asiatique",
            price: 14.7,
            description: "6 Californias saumon avocat, 6 makis saumon, 1 soupe miso, 1 salade et 4 brochettes poulet caramélisé",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410871/foodR%20seed/Maki_Et_Brochette_bdxlay.png"
          },
          {
            name: "Menu Sushi Saumon",
            category: "Asiatique",
            price: 25.6,
            description: "10 Sushis saumon, 1 soupe miso et 1 salade",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410823/foodR%20seed/Menu_Sushi_Saumon_l1mhjl.png"
          },
          {
            name: "Menu Famille",
            category: "Asiatique",
            price: 21.6,
            description: "6 Californias saumon avocat, 6 makis concombre, 6 saumons roll cheese, 6 neige rolls cheese, 4 sushis saumon, 2 sushi thon, 6 sashimis saumon, 6 sashimi thon 6 raviolis",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410849/foodR%20seed/Menu_Famille_ir6jr4.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Louis",
    last_name: "Fruchard",
    address: "9 Rue Fondaudège, 33000 Bordeaux",
    email: "louis@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Kung Food",
        address: "9 Rue Fondaudège, 33000 Bordeaux",
        phone: "05 56 87 86 22",
        meals: [
          {
            name: "Menu Bento",
            category: "Chinois",
            price: 19.7,
            description: "6 Pièces de maki multi choix + 1 salade + 1 soupe miso + 1 riz offert",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410937/foodR%20seed/Menu_Bento_i3bcyp.png"
          },
          {
            name: "Bo-Bun",
            category: "Chinois",
            price: 17.6,
            description: "Vermicelles, salade pousses de soja, boeuf oignons et nem au porc.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410918/foodR%20seed/Bo-Bun_th9huk.png"
          },
          {
            name: "Poulet Frit Deux Saveurs",
            category: "Chinois",
            price: 15.5,
            description: "Un poulet bien grillé, accompagnés d'épices relevées, accompagné de frites",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410894/foodR%20seed/Poulet_Frit_Deux_Saveurs_hzp4os.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Mickael",
    last_name: "Lorentz",
    address: "180 Rue Malbec, 33800 Bordeaux",
    email: "mickael@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "Compoz'Eat",
        address: "180 Rue Malbec, 33800 Bordeaux",
        phone: "05 56 30 11 95",
        meals: [
          {
            name: "Le Winter Bowl",
            category: "Salade",
            price: 18.5,
            description: "Mélange sportif (quinoa, boulgour, lentilles), poulet tandoori, patates douces, courgettes rôties, féta AOP.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670411011/foodR%20seed/Le_Winter_Bowl_ehjtec.png"
          },
          {
            name: "La Caesar",
            category: "Salade",
            price: 13.3,
            description: "Salade romaine, poulet rôti, oeuf poché, grana padano AOP, tomates, champignons rôtis, croûtons.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670410992/foodR%20seed/La_Caesar_ou80nk.png"
          },
          {
            name: "La Falafel",
            category: "Salade",
            price: 13.2,
            description: "Quinoa, pousses dépinard, falafels, tzatziki, rapé de chou-carotte, brocolis, aubergines miso, pickles de chou rouge.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670411032/foodR%20seed/La_Falafel_dzr4or.png"
          }
        ]
      }
    ]
  },
  {
    first_name: "Patrick",
    last_name: "Vigien",
    address: "64 Rue Malbec, 33800 Bordeaux",
    email: "patrick@gmail.com",
    password: 'azerty',
    owner: true,
    restaurant: [
      {
        name: "La Taqueria",
        address: "64 Rue Malbec, 33800 Bordeaux",
        phone: "05 56 10 87 27",
        meals: [
          {
            name: "Quesadillas",
            category: "Mexicain",
            price: 19.9,
            description: "Galette de blé grillée et garnie de cheddar, mozzarella, poivrons grillés, crudités et une viande au choix.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670411127/foodR%20seed/Quesadillas_y53fnv.png"
          },
          {
            name: "Salade Mexicaine",
            category: "Mexicain",
            price: 16.8,
            description: "Assiette fraicheur de riz parfumé au citron vert et à la coriandre, haricots noirs, poivrons grillés, maïs, avocat, tomate, oignons rouges.",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670411154/foodR%20seed/Salade_Mexicaine_xybubt.png"
          },
          {
            name: "Burrito Frites",
            category: "Mexicain",
            price: 19,
            description: "Galette de blé roulée garnie de frites, poivrons grillés, cheddar, mozzarella, crudités et une viande au choix",
            photo: "https://res.cloudinary.com/dh774opzt/image/upload/v1670411170/foodR%20seed/Burrito_Frites_oshj5b.png"
          }
        ]
      }
    ]
  }
]
# end of hash


# creation a 11 users, 11 restaurants, 3 meals per restaurant
puts 'Creation of 11 users, 11 restaurants & 3 meals per restaurant created 😱😱'
  puts ' '
  puts ' '
  puts '___________________________'
  puts ' '


  users.each do |user|
    new_user = User.create!(
      first_name: user[:first_name],
      last_name: user[:last_name],
      address: user[:address],
      email: user[:email],
      owner: true,
      password: 'azerty'
    )
    puts "1️⃣ new user : #{user[:first_name]}"

    new_restaurant = Restaurant.create!(
      name: user[:restaurant].first[:name],
      address: user[:restaurant].first[:address],
      phone: user[:restaurant].first[:phone],
      user: new_user
    )
    puts "1️⃣ new restaurant for #{new_user[:first_name]}: #{new_restaurant[:name]}"

    user[:restaurant].first[:meals].each do |meal|
      new_meal = Meal.new(
        name: meal[:name],
        category: meal[:category],
        price: meal[:price],
        description: meal[:description],
        restaurant: new_restaurant
      )

      file = URI.open(meal[:photo])
      new_meal.photo.attach(io: file, filename: "#{meal[:name]}.png", content_type: "image/png")
      new_meal.save

      puts "1️⃣ new meal for #{new_restaurant[:name]}: #{meal[:name]}"
    end
    puts '___________________________'
    puts ' '
    puts '___________________________'
    puts ' '
  end


  puts '11 users, 11 restaurants & 3 meals per restaurant created 😱😱!'
  puts '___________________________'
  puts ' '

# end of creation of 11 users, 11 restaurants, 3 meals per restaurant

puts ' '
puts ' '
puts 'The END 🏁'
puts ' '
puts '___________________________'
