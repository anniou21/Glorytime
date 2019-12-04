# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts 'Cleaning database...'
[Review, BookingItem, Booking, Bookmark, Shop, User, Watch].each(&:destroy_all)

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
    sku: "TAG-HEUER-CC16-DD",
    price_cents: 430000,
    description: "De 41 mm de diamètre, son boîtier renferme un mouvement automatique de calibre 16, vous permettant l'affichage de la date par guichet ainsi que l'animation de son cadran sombre et de la fonction chronographe.",
    availability: true,
    cost_per_day_cents: 10000,
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
    sku: "TAG-HEUER-MC-11",
    price_cents: 595000,
    description: " À l’occasion du 50e anniversaire de la TAG Heuer Monaco, la Maison lance une édition limitée à seulement 169 exemplaires aux côtés de quatre autres montres exclusives.",
    availability: true,
    cost_per_day_cents: 15000,
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
    sku: "IWC-IC",
    price_cents: 860000,
    description: "L’Ingenieur Chronographe est animé par le calibre de manufacture IWC 69375 avec remontage bidirectionnel à cliquets et réserve de marche de 46 heures.",
    availability: true,
    cost_per_day_cents: 15000,
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
    price_cents: 745000,
    description: "Depuis 1998, la Portugieser Chronographe est le modèle le plus convoité de la famille Portugieser. Elle était alors la première Portugieser permettant non seulement de lire le passage du temps, mais aussi de le chronométrer.",
    availability: true,
    sku: "IWC-PC",
    price_cents: 745000,
    description: "Depuis 1998, la Portugieser Chronographe est le modèle le plus convoité de la famille Portugieser. Elle était alors la première Portugieser permettant non seulement de lire le passage du temps, mais aussi de le chronométrer.",
    availability: true,
    cost_per_day_cents: 15000,
    shop: Shop.find_by(name: "Champs d'Or")
  )
  watch_4.photo.attach(
    io: URI.open('https://j.horloger-paris.com/21259-19703-zoom/iwc-portugieser-chronographe-automatique.jpg'),
    filename: "#{watch_4.model}",
    content_type: 'image/jpg'
    )
  #OMEGA
  watch_5 = Watch.create(
    brand: "Omega",
    model: "SPEEDMASTER '57
CHRONOGRAPHE OMEGA CO‑AXIAL 41,5 MM",
    sku: "OMEGA-S57-CCA-415MM",
    price_cents: 780000,
    description: "Ce modèle arbore un cadran noir laqué ponctué d'un compteur des secondes à 9 heures et d'un compteur des heures et des minutes du chronographe à 3 heures. On trouve également une aiguille centrale des secondes du chronographe ainsi qu'un guichet de date à 6 heures.
",
    availability: true,
    cost_per_day_cents: 15000,
    shop: Shop.find_by(name: "Euro Art et Collection")
  )
  watch_5.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-speedmaster-moonwatch-professional-chronograph-42-mm-31130423001005-l.png'),
    filename: "#{watch_5.model}",
    content_type: 'image/png'
    )

  watch_6 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER CARRERA CALIBRE HEUER 02T",
    price_cents: 1525000,
    description: "Cette montre rompait avec les codes traditionnels de l'horlogerie en étant le premier chronographe spécialement conçu pour les pilotes professionnels, tout en étant parfaitement adapté à la conduite sportive occasionnelle ou à un usage quotidien classique",
    availability: true,
    sku: "TAG-HEUER-CC-H02T",
    price_cents: 1525000,
    description: "Cette montre rompait avec les codes traditionnels de l'horlogerie en étant le premier chronographe spécialement conçu pour les pilotes professionnels, tout en étant parfaitement adapté à la conduite sportive occasionnelle ou à un usage quotidien classique",
    availability: true,
    cost_per_day_cents: 35000,
    shop: Shop.find_by(name: "Champs d'or")
    )
   watch_6.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2017-11/CAR5A90.FT6121_resize_451788656.png?itok=RgQdHQbR'),
    filename: "#{watch_6.model}",
    content_type: 'image/jpg'
    )

   watch_7 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER LINK QUARTZ",
    sku: "TAG-HEUER-LQ",
    price_cents: 405000,
    description: "RESTEZ UNIQUE. Cette montre raffinée et fonctionnelle est la quintessence même du design d'avant-garde et de l'élégance éternelle.",
    availability: true,
    cost_per_day_cents: 10000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_7.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2017-06/link-100m-32mm-wbc1319-ba0600_0.png?itok=OCaRIkxu'),
    filename: "#{watch_7.model}",
    content_type: 'image/jpg'
    )

   watch_8 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER AQUARACER CALIBRE 16",
    sku: "TAG-HEUER-AC-16",
    price_cents: 375000,
    description: "DESCENDEZ DANS LES PROFONDEURS. Depuis que nous avons déposé le brevet du premier boîtier étanche en 1895, nous n'avons cessé de braver les mers et d'envoyer les plongeurs toujours plus loin dans les noires profondeurs océaniques, comprises entre 100 et 1 000 m pour l'Aquagraph.",
    availability: true,
    cost_per_day_cents: 10000,
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_8.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2016-07/CAY218A-FC6361.png?itok=uTzjnr6c'),
    filename: "#{watch_8.model}",
    content_type: 'image/jpg'
    )

   watch_9 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER FORMULA 1 CALIBRE 5",
    sku: "TAG-HEUER-F1C5",
    price_cents: 410000,
    description: "CADRAN BLANC, BRACELET EN ACIER ET CÉRAMIQUE BLANCHE.",
    availability: true,
    cost_per_day_cents: 10000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_9.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2018-02/WAU2213.BA0861_resize.png?itok=iXskEbRG'),
    filename: "#{watch_9.model}",
    content_type: 'image/jpg'
    )

   watch_10 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER CARRERA CALIBRE HEUER01",
    price_cents: 570000,
    description: "EN ROUTE ! Vitesse. Sueur. Puissance. Jack Heuer a créé la Carrera en 1963 en hommage à la célèbre Carrera Panamericana, une course automobile largement considérée comme étant la plus dangereuse au monde.",
    availability: true,
    sku: "TAG-HEUER-CC-H01",
    price_cents: 570000,
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_10.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2018-12/CAR2A1L.BA0688-SPECIAL-ED.-SENNA.png?itok=FQ6lofAY'),
    filename: "#{watch_10.model}",
    content_type: 'image/jpg'
    )

   watch_11 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER MONACO CALIBRE 11",
    price_cents: 525000,
    description: "SOYEZ UNE ICÔNE. Tout comme la ville éponyme et la course automobile qu'elle accueille, la Monaco est la quintessence de l'élégance et du prestige avec une touche de vintage.",
    availability: true,
    sku: "TAG-HEUER-MC-11",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_11.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2018-06/CAW211R.FC6401_resize0806.png?itok=U8VJUVjL'),
    filename: "#{watch_11.model}",
    content_type: 'image/jpg'
    )

   watch_12 = Watch.create(
    brand: "Tag Heuer",
    model: "TAG HEUER AQUARACER CALIBRE 5",
    sku: "TAG-HEUER-AC-5",
    price_cents: 235000,
    description: "DESCENDEZ DANS LES PROFONDEURS. Depuis que nous avons déposé le brevet du premier boîtier étanche en 1895, nous n'avons cessé de braver les mers et d'envoyer les plongeurs toujours plus loin dans les noires profondeurs océaniques, comprises entre 100 et 1 000 m pour l'Aquagraph.",
    availability: true,
    cost_per_day_cents: 11000,
    shop: Shop.find_by(name: "Champs d'Or")
    )
   watch_12.photo.attach(
    io: URI.open('https://www.tagheuer.com/sites/default/files/styles/product_block_header/public/2017-02/WAY201C.FC6395-2017-HD.png?itok=g4ddBIoU'),
    filename: "#{watch_12.model}",
    content_type: 'image/jpg'
    )

   watch_13 = Watch.create(
    brand: "IWC",
    model: "DA VINCI AUTOMATIC 36",
    description: "La Da Vinci Automatic 36 séduit avec son cadran bleu nuit et son bracelet en alligator de Santoni bleu nuit assorti. L’alternance d’éléments bleus, du boîtier en acier fin poli ultrabrillant et des cornes de bracelet forment un contraste saisissant.",
    availability: true,
    sku: "DA-VINCI-A36",
    price_cents: 555000,
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_13.photo.attach(
    io: URI.open('http://static2.worldtempus.com/cache/article/iwc/da-vinci/i/w/iwc-da-vinci-automatic-iw458312_688x688.jpg'),
    filename: "#{watch_13.model}",
    content_type: 'image/jpg'
    )

   watch_14 = Watch.create(
    brand: "IWC",
    model: "AQUATIMER CHRONOGRAPHE EDITION « EXPEDITION JACQUES-YVES COUSTEAU",
    price_cents: 675000,
    availability: true,
    cost_per_day_cents: 20000,
    sku: "AQUATIMER-CHRONOGRAPHE-E-EJYC",
    description: "La montre dédiée à Cousteau est de construction identique à l’Aquatimer Chronographe. Le cadran épuré reprend le look de la première Aquatimer de 1967. Même avec trois compteurs et l’affichage de la date et du jour de la semaine, le cadran bleu du chronographe n’est pas surchargé.",
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_14.photo.attach(
    io: URI.open('http://static2.worldtempus.com/cache/product/i/w/iwc-aquatimer-chronographe-edition-expedition-jacques-yves-cousteau-iw376805-watch-face-view_688x688.jpg'),
    filename: "#{watch_14.model}",
    content_type: 'image/jpg'
    )

   watch_15 = Watch.create(
    brand: "IWC",
    model: "GRANDE MONTRE D’AVIATEUR CALENDRIER ANNUEL SPITFIRE",
    availability: true,
    sku: "GM-AC-AS",
    price_cents: 1910000,
    description: "Sur le cadran de la Grande Montre d’Aviateur Calendrier Annuel Spitfire, le calendrier annuel indique, dans trois fenêtres distinctes, le mois, la date et le jour de la semaine. L’ordre correspond au format américain d’affichage de la date.",
    cost_per_day_cents: 40000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_15.photo.attach(
    io: URI.open('https://www.iwc.com/content/dam/rcq/iwc/15/29/60/8/1529608.png.transform.buying-options_watch_1000.jpeg'),
    filename: "#{watch_15.model}",
    content_type: 'image/jpg'
    )

   watch_16 = Watch.create(
    brand: "IWC",
    model: "PORTOFINO AUTOMATIC",
    description: "La Portofino Automatic avec cadran noir et bracelet à maille milanaise en acier fin est au choix proposée avec un bracelet en alligator. Un robuste mouvement automatique mécanique anime le tout.",
    availability: true,
    sku: "PORTOFINO AUTOMATIC",
    price_cents: 535000,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_16.photo.attach(
    io: URI.open('http://static2.worldtempus.com/cache/product/i/w/iwc-portofino-automatic-34-iw357404_688x688.jpg'),
    filename: "#{watch_16.model}",
    content_type: 'image/jpg'
    )

   watch_17 = Watch.create(
    brand: "IWC",
    model: "MONTRE D’AVIATEUR CHRONOGRAPHE SPITFIRE",
    sku: "MONTRE D’AVIATEUR CS",
    price_cents: 615000,
    description: "Pour la toute première fois, IWC présente une Montre d'Aviateur Chronographe animée par un mouvement de la gamme 69000, recouvert par un boîtier de seulement 41 millimètres.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_17.photo.attach(
    io: URI.open('https://www.iwc.com/content/dam/rcq/iwc/19/41/68/9/1941689.png.transform.buying-options_watch_1000.jpeg'),
    filename: "#{watch_17.model}",
    content_type: 'image/jpg'
    )

   watch_18 = Watch.create(
    brand: "IWC",
    model: "MONTRE D’AVIATEUR CHRONOGRAPHE SPITFIRE",
    sku: "MONTRE D’AVIATEUR CS",
    price_cents: 535000,
    description: "Elle demeure fidèle au design épuré de la célèbre montre de navigation Mark 11, créée en 1948 pour le compte de la Royal Air Force britannique.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Champs d'Or")
    )
   watch_18.photo.attach(
    io: URI.open('https://www.iwc.com/content/dam/rcq/iwc/19/41/45/4/1941454.png.transform.buying-options_watch_1000.jpeg'),
    filename: "#{watch_18.model}",
    content_type: 'image/jpg'
    )

   watch_19 = Watch.create(
    brand: "IWC",
    model: "MONTRE D’AVIATEUR CHRONOGRAPHE TOP GUN EDITION «MOJAVE DESERT»",
    sku: "MONTRE D’AVIATEUR-CTGE-MD",
    price_cents: 995000,
    description: "La céramique couleur sable s'inspire du désert des Mojaves, qui abrite la China Lake Naval Air Weapons Station, le plus grand complexe militaire détenu par l’US Navy.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_19.photo.attach(
    io: URI.open('https://www.iwc.com/content/dam/rcq/iwc/18/13/35/2/1813352.png.transform.buying-options_watch_1000.jpeg'),
    filename: "#{watch_19.model}",
    content_type: 'image/jpg'
    )

   watch_19 = Watch.create(
    brand: "IWC",
    model: "GRANDE MONTRE D'AVIATEUR CALENDRIER PERPÉTUEL EDITION «LEWIS HAMILTON»",
    sku: "GM-AC-PE-LH",
    price_cents: 5220000,
    description: "Dans le monde élitiste de la compétition automobile, Lewis Hamilton symbolise la mesure de toute chose. Le sextuple champion du monde n’hésite toutefois pas à surprendre et à lancer de nouvelles tendances avec ses tenues originales.",
    availability: true,
    cost_per_day_cents: 80000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_19.photo.attach(
    io: URI.open('https://www.iwc.com/content/dam/rcq/iwc/19/71/26/1/1971261.png.transform.buying-options_watch_1000.jpeg'),
    filename: "#{watch_19.model}",
    content_type: 'image/jpg'
    )

   watch_20 = Watch.create(
    brand: "Omega",
    model: "SPEEDMASTER MOONWATCH CHRONOGRAPHE PROFESSIONAL 42 MM",
    sku: "SPEEDMASTER-MCP-42-MM",
    price_cents: 470000,
    description: "L'OMEGA Speedmaster est l'un des modèles les plus emblématiques de la Maison. Utilisée lors des six missions lunaires, la légendaire Speedmaster incarne à la perfection l'esprit pionnier et aventurier de la marque.",
    availability: true,
    cost_per_day_cents: 10000,
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_20.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-speedmaster-moonwatch-31130423001005-l.png'),
    filename: "#{watch_20.model}",
    content_type: 'image/jpg'
    )

   watch_21 = Watch.create(
    brand: "Omega",
    model: "OMEGA CO‑AXIAL MASTER CHRONOMETER 29 MM",
    sku: "OMEGA-CA-MC-29-MM",
    price_cents: 790000,
    description: "L’esthétique reconnaissable et intemporelle de la collection OMEGA Constellation se caractérise par ses fameuses demi-lunes, la présence des célèbres « griffes » sur le boîtier et son bracelet mono-rang.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_21.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-constellation-constellation-manhattan-omega-co-axial-master-chronometer-29-mm-13110292053001-l.png'),
    filename: "#{watch_21.model}",
    content_type: 'image/jpg'
    )

   watch_22 = Watch.create(
    brand: "Omega",
    model: "OMEGA CO‑AXIAL MASTER CHRONOMETER 29 MM",
    price_cents: 730000,
    description: "L’esthétique reconnaissable et intemporelle de la collection OMEGA Constellation se caractérise par ses fameuses demi-lunes, la présence des célèbres « griffes » sur le boîtier et son bracelet mono-rang.",
    availability: true,
    cost_per_day_cents: 10000,
    sku: "OMEGA-CA-MC",
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_22.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-constellation-constellation-manhattan-omega-co-axial-master-chronometer-29-mm-13120292013001-l.png'),
    filename: "#{watch_22.model}",
    content_type: 'image/jpg'
    )

   watch_23 = Watch.create(
    brand: "Omega",
    model: "CHRONOGRAPHE CO‑AXIAL 43 X 43 MM",
    sku: "CHRONOGRAPHE-CA-43X43-MM",
    price_cents: 810000,
    description: "Afin de satisfaire les amateurs de longue date de la Seamaster Bullhead, OMEGA a réédité une version en édition limitée de ce chronographe emblématique. Le design du cadran de la nouvelle Bullhead reprend la puissance du modèle d'origine, avec sa lunette interne distinctive et les compteurs à 12 et 6 heures.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Champs d'Or")
    )
   watch_23.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-seamaster-bullhead-co-axial-chronograph-43-x-43-mm-22512435001001-l.png'),
    filename: "#{watch_23.model}",
    content_type: 'image/jpg'
    )

   watch_24 = Watch.create(
    brand: "Omega",
    model: "CO‑AXIAL MASTER CHRONOMETER PETITE SECONDE 38 MM",
    sku: "CO‑AXIAL-MC-PS-38-MM",
    price_cents: 4020000,
    description: "Hommage aux toutes premières Seamaster de 1948, cette Édition Limitée exclusive reste fidèle au modèle d’après-guerre tout en adoptant les technologies actuelles.",
    availability: true,
    cost_per_day_cents: 80000,
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_24.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-seamaster-seamaster-1948-omega-co-axial-master-chronometer-small-seconds-38-mm-51193382099001-l.png'),
    filename: "#{watch_24.model}",
    content_type: 'image/jpg'
    )

   watch_25 = Watch.create(
    brand: "Omega",
    model: "MARK II CHRONOGRAPHE CO‑AXIAL 42,4 X 46,2 MM",
    sku: "MARK-II-C-CA-424X462-MM",
    price_cents: 530000,
    description: "L’OMEGA Speedmaster est l’un des modèles les plus emblématiques de la Maison. Utilisée lors des six missions lunaires, la légendaire Speedmaster incarne à la perfection l’esprit pionnier et aventurier de la marque.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_25.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-speedmaster-mark-ii-co-axial-chronograph-42-4-x-46-2-mm-32710435006001-l.png'),
    filename: "#{watch_25.model}",
    content_type: 'image/jpg'
    )

   watch_26 = Watch.create(
    brand: "Omega",
    model: "SPEEDMASTER 38 CHRONOGRAPHE CO‑AXIAL 38 MM",
    sku: "SPEEDMASTER-38-C-CA-38-MM",
    price_cents: 750000,
    description: "La collection Speedmaster 38 mm se caractérise par sa simplicité, sa taille unique et ses multiples coloris, tout en restant fidèle à l’esthétique et au patrimoine du plus célèbre des chronographes OMEGA.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_26.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-speedmaster-speedmaster-38-co-axial-chronograph-38-mm-32438385006001-l.png'),
    filename: "#{watch_26.model}",
    content_type: 'image/jpg'
    )

   watch_27 = Watch.create(
    brand: "Omega",
    model: "CHRONOGRAPHE CO‑AXIAL GMT ÉDITION NUMÉROTÉE 44,25 MM",
    sku: "CHRONOGRAPHE-CA-GMT-EN-4425MM",
    price_cents: 760000,
    description: "L'OMEGA Speedmaster est l'un des modèles les plus emblématiques de la Maison. Utilisée lors des six missions lunaires, la légendaire Speedmaster incarne à la perfection l'esprit pionnier et aventurier de la marque.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Champs d'Or")
    )
   watch_27.photo.attach(
    io: URI.open('https://www.omegawatches.com/media/catalog/product/cache/24a428605d9d3486805662c3fc75dd0740bf8916c79722ea9036e86d3e71a17c/o/m/omega-speedmaster-hb-sia-co-axial-gmt-chronograph-numbered-edition-44-25-mm-32192445201003-l.png'),
    filename: "#{watch_27.model}",
    content_type: 'image/jpg'
    )

   watch_28 = Watch.create(
    brand: "Rolex",
    model: "OYSTER PERPETUAL 39",
    sku: "OYSTER-PERPETUAL-39",
    price_cents: 520000,
    description: " Rolex utilise de l’acier Oystersteel pour fabriquer plusieurs éléments de l’habillage de ses montres. Spécialement développé par la marque, l’acier Oystersteel appartient à la famille des aciers 904L, des alliages principalement utilisés dans les secteurs des hautes technologies, de l’aérospatiale et de la chimie, là où la résistance à la corrosion doit être maximale.",
    availability: true,
    cost_per_day_cents: 20000,
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_28.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m114300-0004.png?impolicy=upright-majesty'),
    filename: "#{watch_28.model}",
    content_type: 'image/jpg'
    )

   watch_29 = Watch.create(
    brand: "Rolex",
    model: "YACHT-MASTER 42",
    sku: "YACHT-MASTER-42",
    price_cents: 2525000,
    description: " En disposant de sa propre fonderie, Rolex s’est donné les moyens de créer de nouveaux alliages d’or 18 ct exclusifs satisfaisant aux plus hautes normes de qualité. En fonction de la proportion d’argent, de cuivre, de platine ou de palladium ajoutée, différents types d’or 18 ct sont obtenus : jaune, rose ou gris. Ils sont réalisés uniquement à partir des métaux les plus purs.",
    availability: true,
    cost_per_day_cents: 55000,
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_29.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m114300-0004.png?impolicy=upright-majesty'),
    filename: "#{watch_29.model}",
    content_type: 'image/jpg'
    )

   watch_30 = Watch.create(
    brand: "Rolex",
    model: "LADY-DATEJUST",
    sku: "LADY-DATEJUST",
    price_cents: 1795000,
    description: "Le calibre 2236, un mouvement mécanique à remontage automatique de nouvelle génération entièrement développé et manufacturé par Rolex. Doté du spiral Syloxi en silicium breveté par Rolex, il offre des performances chronométriques superlatives.",
    availability: true,
    cost_per_day_cents: 40000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_30.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m279381rbr-0013.png?impolicy=upright-majesty'),
    filename: "#{watch_30.model}",
    content_type: 'image/jpg'
    )

   watch_31 = Watch.create(
    brand: "Rolex",
    model: "AIR-KING",
    price_cents: 570000,
    description: "L’Air-King est équipée du calibre 3131, un mouvement mécanique à remontage automatique entièrement développé et manufacturé par Rolex. Comme tous les mouvements Rolex Perpetual, le 3131 est certifié chronomètre suisse, une appellation réservée aux montres de haute précision ayant passé avec succès les tests du Contrôle officiel suisse des chronomètres.",
    availability: true,
    cost_per_day_cents: 20000,
    sku: "AIR-KING",
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_31.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m116900-0001.png?impolicy=upright-majesty'),
    filename: "#{watch_31.model}",
    content_type: 'image/jpg'
    )

   watch_32 = Watch.create(
    brand: "Rolex",
    model: "GMT-MASTER II",
    sku: "GMT-MASTER-II",
    price_cents: 3360000,
    description: "La GMT-Master II arbore une aiguille supplémentaire faisant le tour du cadran en 24 heures, en complément des traditionnelles aiguilles des heures, minutes et secondes, ainsi qu’une lunette tournante bidirectionnelle graduée 24 heures.",
    availability: true,
    cost_per_day_cents: 50000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_32.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m126719blro-0002.png?impolicy=upright-majesty'),
    filename: "#{watch_32.model}",
    content_type: 'image/jpg'
    )

   watch_33 = Watch.create(
    brand: "Rolex",
    model: "CELLINI DATE",
    sku: "CELLINI-DATE",
    price_cents: 1635000,
    description: "Traditionnelle par sa forme ronde et son diamètre classique de 39 mm, la Cellini Date se distingue par ses cornes raffinées, sa finition entièrement polie et sa lunette bombée doublée d’un fin cannelé.",
    availability: true,
    cost_per_day_cents: 40000,
    shop: Shop.find_by(name: "Euro Art et Collection")
    )
   watch_33.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m50519-0011.png?impolicy=upright-majesty'),
    filename: "#{watch_33.model}",
    content_type: 'image/jpg'
    )

   watch_34 = Watch.create(
    brand: "Rolex",
    model: "SUBMARINER DATE",
    sku: "SUBMARINER-DATE",
    price_cents: 3380000,
    description: "La lunette tournante de la Submariner est une des fonctions clés de la montre. Ses graduations 60 minutes permettent au plongeur de mesurer avec précision son temps de plongée et d’adapter ses paliers de décompression.",
    availability: true,
    cost_per_day_cents: 55000,
    shop: Shop.find_by(name: "Charlie Watch - Paris")
    )
   watch_34.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m116619lb-0001.png?impolicy=upright-majesty'),
    filename: "#{watch_34.model}",
    content_type: 'image/jpg'
    )

   watch_35 = Watch.create(
    brand: "Rolex",
    model: "SEA-DWELLER",
    sku: "SEA-DWELLER",
    price_cents: 1040000,
    description: "La lunette tournante unidirectionnelle graduée 60 minutes de la nouvelle Sea‑Dweller permet de lire les temps de plongée et de décompression avec précision et en toute sécurité.",
    availability: true,
    cost_per_day_cents: 30000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_35.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m126600-0001.png?impolicy=upright-majesty'),
    filename: "#{watch_35.model}",
    content_type: 'image/jpg'
    )

   watch_36 = Watch.create(
    brand: "Hublot",
    model: "CLASSIC FUSION FERRARI GT",
    sku: "CLASSIC FUSION FERRARI GT",
    price_cents: 2170000,
    description: "Hublot présente une pièce aérienne et élégante en lien avec l’univers du « Gran Turismo ». En lançant la montre Classic Fusion Ferrari GT, dont le design extrêmement novateur intègre le nouveau mouvement de manufacture UNICO dans une carrosserie aux lignes racées et dynamiques, Hublot et Ferrari écrivent un nouveau chapitre de leur partenariat.",
    availability: true,
    cost_per_day_cents: 60000,
    shop: Shop.find_by(name: "Atelier R.de Fèbres")
    )
   watch_36.photo.attach(
    io: URI.open('https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m126600-0001.png?impolicy=upright-majesty'),
    filename: "#{watch_36.model}",
    content_type: 'image/jpg'
    )
# ]

puts 'Creating Bookings...'
bookings_attributes = [
  {
    status: 'pending',
    price_cents: 50000,
    user: User.find_by(name:'Arafath')
  },
   {
    status: 'paid',
    price_cents: 30000,
    user: User.find_by(name:'Arafath')
  },
  {
    status: 'paid',
    price_cents: 15500,
    user: User.find_by(name:'Arafath')
  },
  {
    status: 'paid',
    price_cents: 70000,
    user: User.find_by(name:'Etienne')
  },
  {
    status: 'pending',
    price_cents: 130000,
    user: User.find_by(name:'Anniou')
  },
  {
    status: 'paid',
    price_cents: 50000,
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
    cost_cents: 30000,
  },
  {
    booking: Booking.find_by(user: User.find_by(name: 'Etienne')),
    watch: watch_2.reload,
    status: 'pending',
    start_date: '13 Decembre 2019',
    end_date: '16 Decembre 2019',
    cost_cents: 30000,
  },
  {
    booking: Booking.find_by(user: User.find_by(name: 'Anniou')),
    watch: watch_3.reload,
    status: 'pending',
    start_date: '30 Decembre 2019',
    end_date: '5 Janvier 2020',
    cost_cents: 60000,
  },
  {
    booking: Booking.find_by(user: User.find_by(name: 'Cedrik')),
    watch: watch_4.reload,
    status: 'paid',
    start_date: '3 Janvier 2020',
    end_date: '6 Janvier 2020',
    cost_cents: 30000,
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

puts 'Creating Bookmarks ...'

bookmarks_attributes = [
  {
    user: User.find_by(name: 'Anniou'),
    watch: watch_3
  },
  {
    user: User.find_by(name: 'Arafath'),
    watch: watch_7
  },
  {
    user: User.find_by(name: 'Etienne'),
    watch: watch_14
  },
  {
    user: User.find_by(name: 'Cedrik'),
    watch: watch_28
  }
]

Bookmark.create!(bookmarks_attributes)

