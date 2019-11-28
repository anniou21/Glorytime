# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'Cleaning database...'
[Review, BookingItem, Booking, Shop, User, Watch].each(&:destroy_all)

puts 'Creating Users...'
# users_attributes = [
  #User - RENTER
  user = User.create(
  email: 'anniou@gmail.com',
  password: '123456',
  name: 'Anniou',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tu4sfe6rgefaundyisec.jpg'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  )
  user = User.create(
  email: 'etienne@gmail.com',
  password: '123456',
  name: 'Etienne',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://avatars0.githubusercontent.com/u/48604969?v=4'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  )
  user = User.create(
  email: 'arafath@gmail.com',
  password: '123456',
  name: 'Arafath',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://avatars3.githubusercontent.com/u/53219710?v=4'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  )
  user = User.create(
  email: 'cedrik@gmail.com',
  password: '123456',
  name: 'Cedrik',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zurqnw71rlncmcpldbyl.jpg'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  ) #
  # OWNER
  user = User.create(
  email: 'bernard@gmail.com',
  password: '123456',
  name: 'Bernard',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/blv0qg9a9csoklufyjqu.jpg'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  )
  user = User.create(
  email: 'paul@gmail.com',
  password: '123456',
  name: 'Paul',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://avatars3.githubusercontent.com/u/54004476?v=4'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  )
  user = User.create(
  email: 'muriel@gmail.com',
  password: '123456',
  name: 'Muriel',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://avatars2.githubusercontent.com/u/54837955?v=4'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  )
  user = User.create(
  email: 'theodore@gmail.com',
  password: '123456',
  name: 'Theodore',
  description: 'Passioné de montres de luxe'
  )
  user.photo.attach(
    io: URI.open('https://avatars3.githubusercontent.com/u/50828267?v=4'),
    filename: "#{user.name}_avatar",
    content_type: 'image/jpg'
  )

puts 'Creating Shops...'
shops_attributes = [
  {
    name: "Champs d'Or",
    address: "6 Avenue Francklin Delano Roosevelt",
    description: "Cette bijouterie vend montres, bijoux, maroquinerie et stylos, neufs ou d’occasion, de marques haut de gamme.",
    user: User.find_by(name:'Bernard')
  },
  {
    name: "Euro Art et Collection",
    address: "5 Rue de la Grange Batelière",
    description: "Cette boutique vend montres neufs ou d’occasion, de marques haut de gamme.",
    user: User.find_by(name:'Paul')
  },
  {
    name: "Charlie Watch - Paris",
    address: "26 Rue Pastourelle",
    description: "Cette boutique mets à disposition des montres de marques haut de gamme.",
    user: User.find_by(name:'Muriel')
  },
  {
    name: "Atelier R.de Fèbres",
    address: "7 Rue de Rome",
    description: "Cette boutique mets à disposition des montres de marques haut de gamme.",
    user: User.find_by(name:'Theodore')
  }
]

Shop.create!(shops_attributes)

puts 'Creating Watches...'



# watches_attributes = [
  #TAG HUER
  watch_1 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER CARRERA CALIBRE 16 DAY-DATE",
    price: 4.300,
    description: "De 41 mm de diamètre, son boîtier renferme un mouvement automatique de calibre 16, vous permettant l'affichage de la date par guichet ainsi que l'animation de son cadran sombre et de la fonction chronographe.",
    availability: true,
    shop: Shop.find_by(name: "Champs d'Or")
  )
  watch_1.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2019-10/CV2A1V.BA0738-SOLDAT.png?itok=TYNLIqoo'),
    filename: "#{watch_1.model}",
    content_type: 'image/png'
    )

  watch_2 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER MONACO CALIBRE 11",
    price: 5.950,
    description: " À l’occasion du 50e anniversaire de la TAG Heuer Monaco, la Maison lance une édition limitée à seulement 169 exemplaires aux côtés de quatre autres montres exclusives.",
    availability: true,
    shop: Shop.find_by(name: "Champs d'Or")
  )
  watch_2.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2019-08/CAW211Z.FC6470.png?itok=1GHTEkZf'),
    filename: "#{watch_2.model}",
    content_type: 'image/jpg'
    )
  #IWC
  watch_3 = Watch.create(
    brand: "IWC",
    model: "INGENIEUR CHRONOGRAPHE",
    price: 8.600,
    description: "L’Ingenieur Chronographe est animé par le calibre de manufacture IWC 69375 avec remontage bidirectionnel à cliquets et réserve de marche de 46 heures.",
    availability: true,
    shop: Shop.find_by(name: "Champs d'Or")
  )
  watch_3.photo.attach(
    io: URI.open('https://www.maier.fr/31988-thickbox_default/ingenieur-chronographe-classic.jpg'),
    filename: "#{watch_3.model}",
    content_type: 'image/jpg'
    )

  watch_4 = Watch.create(
    brand: "IWC",
    model: "PORTUGIESER CHRONOGRAPHE",
    price: 7.450,
    description: "Depuis 1998, la Portugieser Chronographe est le modèle le plus convoité de la famille Portugieser. Elle était alors la première Portugieser permettant non seulement de lire le passage du temps, mais aussi de le chronométrer.",
    availability: true,
    shop: Shop.find_by(name: "Champs d'Or")
  )
  watch_4.photo.attach(
    io: URI.open('https://www.iwc.com/content/dam/rcq/iwc/16/49/74/6/1649746.jpeg.transform.buying-options_watch_1000.jpeg'),
    filename: "#{watch_4.model}",
    content_type: 'image/jpg'
    )
  #OMEGA
  watch_5 = Watch.create(
    brand: "Omega",
    model: "SPEEDMASTER SPEEDMASTER '57
CHRONOGRAPHE OMEGA CO‑AXIAL 41,5 MM",
    price: 7.800,
    description: "Ce modèle arbore un cadran noir laqué ponctué d'un compteur des secondes à 9 heures et d'un compteur des heures et des minutes du chronographe à 3 heures. On trouve également une aiguille centrale des secondes du chronographe ainsi qu'un guichet de date à 6 heures.
",
    availability: true,
    shop: Shop.find_by(name: "Euro Art et Collection")
  )
  watch_5.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-speedmaster-moonwatch-professional-chronograph-42-mm-31130423001005-l.png'),
    filename: "#{watch_5.model}",
    content_type: 'image/png'
    )
# ]

puts 'Creating Bookings...'
bookings_attributes = [
  {
    status: 'confirmed',
    price_total: 500,
    user: User.find_by(name:'Arafath')
  },
  {
    status: 'paid',
    price_total: 700,
    user: User.find_by(name:'Etienne')
  },
  {
    status: 'confirmed',
    price_total: 1300,
    user: User.find_by(name:'Anniou')
  },
  {
    status: 'paid',
    price_total: 500,
    user: User.find_by(name:'Cedrik')
  }
]

Booking.create!(bookings_attributes)

puts 'Creating Booking_items...'
booking_items_attributes =[
  {
    booking: Booking.find_by(user: User.find_by(name: 'Arafath')),
    watch: watch_1.reload,
    status: 'pending',
    start_date: '23 Decembre 2019',
    end_date: '26 Decembre 2019',
  },
  {
    booking: Booking.find_by(user: User.find_by(name: 'Etienne')),
    watch: watch_2.reload,
    status: 'pending',
    start_date: '13 Decembre 2019',
    end_date: '16 Decembre 2019'
  },
  {
    booking: Booking.find_by(user: User.find_by(name: 'Anniou')),
    watch: watch_3.reload,
    status: 'pending',
    start_date: '30 Decembre 2019',
    end_date: '5 Janvier 2020'
  },
  {
    booking: Booking.find_by(user: User.find_by(name: 'Cedrik')),
    watch: watch_4.reload,
    status: 'confirmed',
    start_date: '3 Janvier 2020',
    end_date: '6 Janvier 2020'
  }
]

BookingItem.create!(booking_items_attributes)

puts 'Creating Reviews ...'
reviews_attributes = [
  {
    stars: 3,
    content: "Super montre ! Je l'ai loué pour un mariage et ça s'est super bien passé ! ",
    user: User.find_by(name: 'Etienne'),
    booking_item: BookingItem.find_by(watch: watch_2)
  },
  {
    stars: 4,
    content: "Super montre ! Je l'ai loué pour un mariage et ça s'est super bien passé ! ",
    user: User.find_by(name: 'Arafath'),
    booking_item: BookingItem.find_by(watch: watch_1)
  },
  {
    stars: 5,
    content: "Super montre ! Je l'ai loué pour un mariage et ça s'est super bien passé ! ",
    user: User.find_by(name: 'Anniou'),
    booking_item: BookingItem.find_by(watch: watch_3)
  },
  {
    stars: 1,
    content: "Deçu! Je l'ai loué pour un mariage et ça s'est très mal passé ! ",
    user: User.find_by(name: 'Cedrik'),
    booking_item: BookingItem.find_by(watch: watch_4)
  }
]

Review.create!(reviews_attributes)

