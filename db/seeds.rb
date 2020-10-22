
Excursion.destroy_all
Visitor.destroy_all
TripPackage.destroy_all
ExcursionPackageJoiner.destroy_all
Trip.destroy_all

scuba_diving = Excursion.find_or_create_by(name: "Scuba Diving", budget: 4, description: "Explore the wonderful seascape of the Grotta Delle Corvine! The scuba experts at Travel Positano will guide you on underwater paths based on your ability.")
yacht_trip = Excursion.find_or_create_by(name: "Yacht Trip to Capri", budget: 5, description: "Oh you fancy, huh? Take a trip on Donatella Versace's yacht to the beautiful island of Capri! Enjoy limoncello and unlimited pasta while you sail the Gulf of Naples. Upon your arrival to Capri, be sure to peek in the world famous Blue Grotto and show off your boat in the Marina Piccola")
bike_ride = Excursion.find_or_create_by(name: "Bike Trip on the Strada Statale", budget: 3, description: "A Campagnolo road bike will be your companion as you take in the salt air and pedal up and down the cliffsides of the Strada Statale. Your legs might feel like you just biked the Tour de France at the end, but the scenery will be more than worth it (we promise!)")
beach_trip = Excursion.find_or_create_by(name: "A Beach Trip and Picnic", budget: 1, description: "That's your budget?! Okay, we'll do what we can - just because you're on a tight budget doesn't mean you can't enjoy the best Amalfi has to offer! Soak up some rays on the Spiaggia Grande, the largest beach in Positano, while enjoying a picnic lunch of fresh caprese sandwiches and cold San Pellegrinos. Spare a few more euros and we'll throw in some wine!")
cooking_class = Excursion.find_or_create_by(name: "Cooking Class", budget: 3, description: "Enjoy a one-of-a-kind food experience with a local Praiano couple. In the heart of the city of Praiano, two locals will accompany you to a small, traditional grocery store. After the tour and shopping, you will go to the beautiful home overlooking the sea and enjoy a cooking class and learn to prepare the dishes of a traditional Italian family. Also available : homemade wine!")
walking_tour = Excursion.find_or_create_by(name: "Walking Tour", budget: 2, description: "Get ready to explore the jewel of Italy's Amalfi Coast. Positano is a pleasant gathering of cafes, quaint shops, and restaurants that hug the rigid shoreline. While people enjoy the views, Positano also has a rich, intriguing history to explore. Your package will include a map to help navigate your walking tour. See how many lemons you can count! Sorry your tour will have to be alone, amico - next time you visit, come with a bigger budget.")
wine_tasting = Excursion.find_or_create_by(name: "Wine Tasting", budget: 4, description: "What would a trip to Italy be without some famous vino? Put down that two-buck Chuck and taste world-class wines at vineyard Le Vigne di Raito with your sommelier who happens to be Leonardo DiCaprio. Hey, even world-class actors need a side gig sometimes.")

anne = Visitor.find_or_create_by(name: "Anne", budget: 2)
kellie = Visitor.find_or_create_by(name: "Kellie", budget: 5)

platinum_package = TripPackage.find_or_create_by(name: "Platinum Package", budget: 5, excursions:[yacht_trip, scuba_diving, cooking_class, wine_tasting, bike_ride])
gold_package = TripPackage.find_or_create_by(name: "Gold Package", budget: 4, excursions:[scuba_diving, cooking_class, wine_tasting, bike_ride])
silver_package = TripPackage.find_or_create_by(name: "Silver Package", budget: 3, excursions: [cooking_class, bike_ride, scuba_diving])
bronze_package = TripPackage.find_or_create_by(name: "Bronze Package", budget: 2, excursions: [walking_tour, beach_trip])
brown_package = TripPackage.find_or_create_by(name: "Brown Package", budget: 1, excursions: [beach_trip])

# Trip Packages



# Bronze Package
# beach trip with picnic lunch and umbrella
# walking tour of Positano 

# Silver Package
# bike ride along the coast
# cooking class 

# Gold Package
# yacht trip to Capri
# Wine Tasting
# Scuba diving 

