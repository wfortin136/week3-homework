# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Place.delete_all

Place.create(wonder_id: 1, name: "The Great Pyramid of Giza", url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Great_Pyramid_of_Giza,_Giza,_Egypt8.jpg/1024px-Great_Pyramid_of_Giza,_Giza,_Egypt8.jpg", admis_price: "$44.00", w_type: "Ancient", description: "The Great Pyramid of Giza (also known as the Pyramid of Khufu or the Pyramid of Cheops) is the oldest and largest of the three pyramids in the Giza Necropolis bordering what is now El Giza, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.") 
Place.create(wonder_id: 2, w_type: "Ancient", name: "Hanging Gardens of Babylon", url: "http://www.history.com/news/wp-content/uploads/2013/05/Hanging-Gardens-of-Babylon.jpg", admis_price: "PRICELESS", description: "The Hanging Gardens of Babylon were one of the Seven Wonders of the Ancient World, and the only one whose location has not been definitely established.")
Place.create(wonder_id: 3, w_type: "Ancient", name: "Temple of Artemis", url: "https://daydreamtourist.files.wordpress.com/2013/07/temple-of-artemis.jpg", admis_price: "FA-REE", description: "The Temple of Artemis or Artemision (Greek: Ἀρτεμίσιον, Turkish: Artemis Tapınağı), also known less precisely as the Temple of Diana, was a Greek temple dedicated to the goddess Artemis and is one of the Seven Wonders of the Ancient World. It was located in Ephesus (near the modern town of Selçuk in present-day Turkey), and was completely rebuilt three times before its eventual destruction in 401. Only foundations and sculptural fragments of the latest of the temples at the site remain.")
Place.create(wonder_id: 4, w_type: "Ancient", name: "Statue of Zeus at Olympia", url: "http://www.annodomini.org.uk/wp-content/uploads/2012/08/ZeusStatue.jpg", admis_price: "PRICELESS", description: "The Statue of Zeus at Olympia was a giant seated figure, about 13 m (43 ft) tall,[1] made by the Greek sculptor Phidias around 435 BC at the sanctuary of Olympia, Greece, and erected in the Temple of Zeus there. A sculpture of ivory plates and gold panels over a wooden framework, it represented the god Zeus sitting on an elaborate cedar wood throne ornamented with ebony, ivory, gold and precious stones. It was regarded as one of the Seven Wonders of the Ancient World until its eventual loss and destruction during the 5th century AD.[2] No copy of the statue has ever been found, and details of its form are known only from ancient Greek descriptions and representations on coins.")
Place.create(wonder_id: 5, w_type: "Ancient", name: "Mausoleum at Halicarnassus", url: "https://upload.wikimedia.org/wikipedia/commons/f/f4/The_ruins_of_the_Mausoleum_at_Halicarnassus.jpg", admis_price: "Free", description: "The Mausoleum at Halicarnassus or Tomb of Mausolus Modern was a tomb built between 353 and 350 BC at Halicarnassus (present Bodrum, Turkey) for Mausolus, a satrap in the Persian Empire, and Artemisia II of Caria, who was both his wife and his sister. The structure was designed by the Greek architects Satyros and Pythius of Priene.")
Place.create(wonder_id: 6, w_type: "Ancient", name: "Colossus of Rhodes", url: "http://pre08.deviantart.net/8721/th/pre/f/2012/198/0/f/colossus_of_rhodes_by_giovanino-d57e2nv.jpg", admis_price: "FREE", description: "A statue of the Greek titan-god of the sun Helios, erected in the city of Rhodes, on the Greek island of the same name, by Chares of Lindos in 280 BC. It is one of the Seven Wonders of the Ancient World. It was constructed to celebrate Rhodes' victory over the ruler of Cyprus, Antigonus I Monophthalmus, whose son unsuccessfully besieged Rhodes in 305 BC. Before its destruction in the earthquake of 226 BC, the Colossus of Rhodes stood over 30 metres (98 feet) high, making it one of the tallest statues of the ancient world.")
Place.create(wonder_id: 7, w_type: "Ancient", name: "Lighthouse of Alexandria", url: "http://www.touregypt.net/images/touregypt/pharos2.jpg", admis_price: "Free", description: "A lighthouse built by the Ptolemaic Kingdom between 280 and 247 BC which was between 393 and 450 ft (120 and 137 m) tall. It was one of the tallest man-made structures in the world for many centuries, and was regarded as one of the Seven Wonders of the Ancient World. Badly damaged by three earthquakes between AD 956 and 1323, it then became an abandoned ruin. It was the third longest surviving ancient wonder (after the Mausoleum at Halicarnassus and the extant Great Pyramid of Giza) until in 1480 the last of its remnant stones were used to build the Citadel of Qaitbay on the site. In 1994, French archaeologists discovered some remains of the lighthouse on the floor of Alexandria's Eastern Harbour.")
