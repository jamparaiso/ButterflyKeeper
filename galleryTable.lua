--insectGallery data

--do exactly the same as what you did on the triviaTable.
--read again the instructions there as a refresher.
--NOTE:
--images must be in png format. no jpeg, jpg, etc.
--images must be 250 x 250 pixels, no more no less.
--make sure that the image file name is the same of what you put in here, to avoid errors.
--make sure that all the IMAGES are in "insectGallery" folder.
--just the said folder and upload it on dropbox.

local M = {}

	M.insectTableList = {
	--this is just the sample

		{
		--General Mosquito
			insectID = 2,
			imgSource = "images/insectGallery/mosquito.png",
			description = [[Scientific name of Mosquito is Culicidae. These species have one pair of scaled wings with a pair of halters and slender bodies with long legs. Female mosquitoes bite human and animals while male mosquitoes feed only on plant juices.
			The mosquito goes through four distinct stages Egg Larva Pupa and Adult. A mosquito flaps its wings five hundred times a second.
			Mosquitoes are the deadliest animals on Earth and it can detect carbon dioxide from seventy five feet away.
			Mosquito pupae live in water from one to four days, larvae from seven to fourteen days and the life span is four to six weeks. The number of mosquito in the entire world range from two thousand five hundred to three thousand.
			And out of every one thousand mosquito only one female carries a disease that could be fatal to humans such as West Nile Virus, Malaria and Dengue. 
			]],
			source = [[insects.about.com]],
		},
		{
		--Malaria mosquito
			insectID = 2, --what insect it is.
			imgSource = "images/insectGallery/anophelesmosquito.png", --just change the ant.png of what the image name is.
			description = [[Malaria mosquito or Anopheles is a type of mosquito that can be identified by their typical resting position. 
			It serves as the vectors for canine heartworm and it can be seen more likely when eat bananas. 
			Female mosquitoes take blood meals to carry out egg production and such blood meals are the link between the human and the mosquito hosts in the parasite life cycle.
			Anophelines are found worldwide except Antartica.
			Has resistance to insecticides through years and years of pesticide use. 
			Out of four hundred thirty species of Anpheles mosquito between thirty and fourty are actual vectos or conveyors of Malaria.]],
			source = [[www.mosquitomagnet.com]],
		},
		{
		--House mosquito
			insectID = 2, --what insect it is.
			imgSource = "images/insectGallery/culex.png", --just change the ant.png of what the image name is.
			description = [[House mosquito or Culex. This mosquito has the three body parts to insects first is head next is thoraz and abdomen and it has one pair of wings.
			The development cycle takes two weeks and is complete metamorphosis. It lives from ten to fourteen days and its bite is pitchy and can be painful.
			In prevention of removing all objects on your property that collect rain water.
			This species is known to transmit encephalitis or sleeping sickness to man and horses.
			Culex mosquitoes lay their eggs on the surface of fresh or stagnant water one at a time and sticking them together to form a raft from two hundred to three hundred eggs.
			It will feed on either humans or animals with birds being very common for them to feed on and it feeds on fungi and bacteria and other tiny organisms through straw like filters.]],
			source = [[www.tinymosquito.com]],
		},
		{
		--Tiger mosquito
			insectID =2, --what insect it is.
			imgSource = "images/insectGallery/tigermosquito.png", --just change the ant.png of what the image name is.
			description = [[Tiger mosquito or Aedes is a black and white color and their legs sre striped black and white and has elongated proboscis use to extract blood.
			These insects are faster moving and more aggressive than other species of mosquitoes. It most active during the day and require very little water to breed.
			It transmit viral infections such as either dengue fever or yellow fever and eastern equine encephalitis. Use a vaccine to provide protection from yellow fever.
			Measures to prevent mosquito bites include such as mosquito traps or insect repellents and mosquito nets.
			It takes about ten to twelve days for the mosquito to be capable of transmitting the dengue virus to a new person. 
			These species is responsible for the transmission of human lymphatic filariasis.
			Infection with these viruses are typically accompanied by a fever and in some cases encephalitis which can lead to death.]],
			source = [[en.wikipedia.org]],
		},
		{
		--Black tailed mosquito
			insectID = 2, --what insect it is.
			imgSource = "images/insectGallery/culiseta.png", --just change the ant.png of what the image name is.
			description = [[Black tailed mosquito or Culiseta Melanura is a small and dark mosquito with white lyre shaped markings and banded legs.
			Most frequently found in tropical and subtropical areas of the world. It carry the West Nile Virus and Eastern Equine encephalitis.
			It feeds on birds and mammals but a few feed on reptiles.
			Most Blakctailed species are cold adapted which only occur in warmer climates during the colder parts of the year or at higher elevations where temperatures are low.
			These species of mosquito attack domestic animals and occasionaly humans and considered unusual because it overwinters as larvae and it has multiple generations per year.
			Eastern equine enecephalitis virus can cause severe disease in human either horses or dogs and some birds and it may occur through vomiting and headache or fever.
			]],
			source = [[en.wikipedia.org]],
		},


		{
		--Ants
			insectID = 1, --what insect it is.
			imgSource = "images/insectGallery/ant.png", --just change the ant.png of what the image name is.
			description = [[Ant or Formicidae is divided into three sections the head next the thorax and gaster. 
			Life expectancy of an ant is fourty five to sixty days. It has two eyes called compound eyes. 
			Ants may use their antennae not only for touch but also for their sense of smell. 
			Ants are clean and tidy insects. Ants cannot digest leaves because they cannot digest cellulose.
			If the ants has found a good source for food it leaves a trail of scent so that the other ants int the colony can find the food.
			Ants can run carrying their eggs and young to seek shelter in a safe place which can be biological warnings that may help our ancestors prepare for an incoming disaster like flood and typhoon.

			]],
			source = [[en.wikipedia.org]],
		},
		{
		--Field Ants
			insectID = 1, --what insect it is.
			imgSource = "images/insectGallery/fieldant.png", --just change the ant.png of what the image name is.
			description = [[Field ant or Formica is a dark brown black in color and small segment at waist point. 
			No sting present and most common ants found in homes and around buildings.
			These ants usually nests in the ground in lawns or gardens and parks. 
			Field ants can spray formic acid while they bite so their bite can be painful and it doesnt invades homes.
			Formica species live in wooded areas where there exists no shortage of material which they can hatch their mounds.
			Sunlight is important to most Formica species and colonies rarely survive for any considerable period in deeply shaded.
			Field ants are the largest group of ants and they are very diverse. They love sugar like aphid honeydew, soft bodied insects like caterpillars and seed husks.
			 ]],
			source = [[www.clemson.edu]],
		},
		{
		--Fire Ants
			insectID = 1, --what insect it is.
			imgSource = "images/insectGallery/fireant.png", --just change the ant.png of what the image name is.
			description = [[Fire ant or Solepnosis is coppery brown on the head and body with a darker abdomen.
			Has two segment antennal club which is most visible front view of the female reproductive ant.
			These ants are aggressively and can inflict a painful sting resulting in a pustule some fourt eight hours later.
			Fire ants are the major agricultural and urban pest or destroying crops and invading residential areas both outdoors and indoors.
			The fire ant male die after mating and their venom is composed of alkaloids derived from piperidine.
			The sting swells into a bump which can cause much pain and irritation and fire ants are omnivores they will feed on animal or vegetable sources of food.
			]],
			source = [[en.wikipedia.org]],
		},
		{
		--Pavement Ants
			insectID = 1, --what insect it is.
			imgSource = "images/insectGallery/pavementant.png", --just change the ant.png of what the image name is.
			description = [[Pavement ant or Tetramorium caespitum is one eight in length and have brwon to black bodies and pale legs and antennae.
			It prefers eat greasy and sweet foods. Pavement ants earned their name because the nest in crakcs in driveways and under sidewalks and piling the resulting dirt in a mound on top of the pavement.
			The nests of pavement ants are difficult to locate so the most efficient ay to manage an infestation.
			They will almost anything including insects, seeds, honeydew, bread, meats, nuts, icecream and cheese.
			Pavement ants need moisture and will travel some distance to find a source to continue to grow and develop.
			]],
			source = [[en.wikipedia.org]],
		},
		{
		--Pharaoh Ants
			insectID = 1, --what insect it is.
			imgSource = "images/insectGallery/pharoahant.png", --just change the ant.png of what the image name is.
			description = [[ Pharaoh ants or Monomorium pharoanis are very small about two mm lng. It has light yellow bodies with red and black markings on the abdomen.
			They are a wide range of food which includes syrups, jellies, grease, cake and pet foods specially sweets.
			It can take advantage of artificial heating in buildings to survive the winter.
			Pharoah ant queen can lay hundred of eggs in her lifetimes and the eggs will hatch in five to seven days.
			These kind of ants grow from egg to adult in about thirty eight days and can use a positive feedback system of foraging.
			]],
			source = [[www.pestdefense.com]],
		},
		{
		--Fly
			insectID = 3, --what insect it is.
			imgSource = "images/insectGallery/fly.png", --just change the ant.png of what the image name is.
			description = [[ Fly or Diptera is typically have short and streamlined bodies. The first tagma of the fly is head consists of ocelli next antennae and compound eyes and the mouthparts and the second tagma is the thorax that nears the wings.
			Life expectancy of a fly is eight days to two months or in some cases up to a year.
			Flies plague every part of the world except the polar ice caps.
			Every time a fly lands it sloughs off thousands of microbes.
			Millions of microorganisms may flourish in a single fly gut while a half-billion more swarm over its body and legs.
			Spread diseases readily because they move quickly from rotting disease laden garbage to exposed human foods and utensils.
			If a fly lands on food or utensils customers may ingest germs that can trigger serious illness such as diarrhea food poisoning meningitis and blood stream infections.
			]],
			source = [[www.pestdefense.com]],
		},
		{
		--Drain Fly
			insectID = 3, --what insect it is.
			imgSource = "images/insectGallery/drainfly.png", --just change the ant.png of what the image name is.
			description = [[Drainfly or Psychodidae are usually yellowish with clear or lightly banded wings and hairy bodies.
			Drain flies also called moth flies because of their fuzzy appearance. 
			It can cause huge problems in household or commercial drains as well as increase health risks in asthmatics.
			Drain fly is a strong flier and rely heavily on their fuzzy antennas to lolcate food.
			It make themselves at home and feeding on leftover liquids or moist solids in the pipes or drains and sewers.
			Three weeks is the drain fly has to live and its greatest threat to human is the risk of being inhaled is direct into the lungs.
			Drain flies are common in moist areas coated with nutrient laden organic material and they do not bite and surprisingly do not transmit human diseases.
			The best prevention is to accomplish by removing food sources such as hair clogs in drains.
			]],
			source = [[www.pestdefense.com]],
		},
		{
		--Fruit Fly
			insectID = 3, --what insect it is.
			imgSource = "images/insectGallery/fruitfly.png", --just change the ant.png of what the image name is.
			description = [[Fruitfly or Drosophila nelanogaster are small, pale yellow to reddish brown to black with red eyes flies.
			It can be attracted to bait of fermented bananas or mushroom and vary widely in their reproductive capacity.
			One of the most note that they are often found in unsanitary conditions like garbage dumps and trash cans that may be hazardous to human health.
			Their hairy bodies and sticky food pads can carry gemrs and bacteria from sites that can cause of diarrheal illnesses.
			Fruit affected by fruit flies can be normal on the outside but be drown on the inside and unsure whether the fruit is good or not, throw it away because the female fly lay her eggs in all cultivated fruits and vegetables.	
			]],
			source = [[www.softschools.com]],
		},
		{
		--House Fly
			insectID = 3, --what insect it is.
			imgSource = "images/insectGallery/housefly.png", --just change the ant.png of what the image name is.
			description = [[Housefly or Musca domestica has a gray thorax with four dark, longitudinal stripes and its abdomen is yellow or partially yellow with a dark median line.
			They live and feed organic material such as garbage, carrion or feces. The flies depend on arm temperatures generally the warmer the temperature, the faster the flies will develop.
			Houseflies feed on liquid or semiliquid substances beside solid material which has been softened by saliva or vomit.
			They can survive in all habitats where people can survive because ther are accustomed to the life near humans.
			It is considered a pest that can carry serious diseases and pathogenic bacteria such as Gangerene, Tuberculosis, Dysentry, Anthrax, Plague and different types of poisoning.
			]],
			source = [[www.softschools.com]],
		},
		{
		--Phorid Fly
			insectID = 3, --what insect it is.
			imgSource = "images/insectGallery/phoridfly.png", --just change the ant.png of what the image name is.
			description = [[Phorid fly or Phoridae are usually black or brown to more yellow, orange, pale grey and pale white. THe head is usually rounded and in some species narrowed towards the vertex.
			Their wings are clear or tinged only rarely with markings and they have antennae.
			Phorid flies are found worldwide though the greatest variety of species is to  be found in the tropics.
			These flies are often associated with clogged drains inside buildings and be considered to be filth flies due to the environment they frequent.
			]],
			source = [[www.orkin.com]],
		},
		{
		--Cockroach
			insectID = 4, --what insect it is.
			imgSource = "images/insectGallery/cockroach.png", --just change the ant.png of what the image name is.
			description = [[Cockroach or Blattaria may vary in size from ten mm to twenty five mm, have long whip like antennae and has two pair of wings.
			A cockroach can live without its head for a week and can hold their breath for forty minutes and can even survive being submerged under water for half an hour.
			They can spread germs and bacteria throughout a home very quickly and implicated in outbreaks of illness and allergic reactions to humans.
			They are most likely attractive by the alcohol mixed with hops and sugar.
			Cockroaches can live without food for one month but will only survive a week without water and sense when there is upcoming earthquake.
			]],
			source = [[www.funology.com]]
	},
	{
		--American Cockroach
			insectID = 4, --what insect it is.
			imgSource = "images/insectGallery/americancockroach.png", --just change the ant.png of what the image name is.
			description = [[ American cockroach or Periplaneta americana are reddish brown and have a yellowish margin on the body region behind the head. 
			They also have the chewing mouth parts, long, segmented antennae and leathery four wings with delicate hind wings.
			This insect can travel quickly often darting out of sight when someone enters a room and can fit small cracks and under doors despite its faily large size.
			American cockroaches can alter flavor of food and very active at night.
			They will deposit them on foods and can cause food infections or poisoning.
			Disease producing organisms such as bacteria, protoza and viruses have been found in cockroach bodies.
			]],
			source = [[www.rentokil.com]]
	},
	{
		--Green Cockroach
			insectID = 4, --what insect it is.
			imgSource = "images/insectGallery/greencockroach.png", --just change the ant.png of what the image name is.
			description = [[Green cockroach or Panchlora nivea is winged and a strong flier, pale green to yellowish green in color with a yellow line running up the sides.
			It is found in subtropical or tropical climates, it usually an outdoor species and is rarely found indoors so is not considered a pest. 
			It is often attracted to both indoor and outfoor lights and it is mainly a noctural species.
			Green cockroaches feed on sugary organic matter such as fruits and spilled soda and they are not aghressive cockroach.
			They are harmless in their presence and may only damage fresh fruit which has been left out or has fallen from trees and they are NOT known to carry any disease.
			]],
			source = [[www.pestnet.com]]
	},
	{
		--Surinam Cockroach
			insectID =4, --what insect it is.
			imgSource = "images/insectGallery/surinam.png", --just change the ant.png of what the image name is.
			description = [[Surinam cockroach OR Pycnoscelus Surinamensis are dark brown to black bodies with shiny browny wings and paler wings.
			It is a common plant pest and be found around the world in tropical regions extending into subtropical regions.
			They prefer dark, moist areas and hide in corners and beneath objects.
			This cockroahc commonly burrowing in loose soil, humus, mould compost piles and lawn thatch or hiding beneath rocks, rotten branches, trash and other debris.
			Indoor infestations can often be controlled using sprays or granules on pottes plants.
			]],
			source = [[www.orkin.com]]
	},
	{
		--Wood Cockroach
			insectID = 4, --what insect it is.
			imgSource = "images/insectGallery/woodcockroach.png", --just change the ant.png of what the image name is.
			description = [[Wood Cockroach or Parcoblatta have flat, oval body, long antennae, spiny legs, Chesnutt brown color.
			Wood cockroach behaves differently than the house cockroach and does not thrive and reproduce in homes.
			These cockroaches could be found in under wood piles, decaying logs and in moist environment and do not harm the house structure, furnishing or occupants.
			They are active both during day and at night and cannot survive indoors.
			There is one generation of wood cockroach per year and they need two years to complete their life cycle.
			To prevent an infestation, inspect all firewood brought into your home and chemical pest control measured is rarely needed.
			But it is harmless to human.
			]],
			source = [[www.walthamservices.com]]
	},
		{
		--Termite
			insectID = 5, --what insect it is.
			imgSource = "images/insectGallery/termite.png", --just change the ant.png of what the image name is.
			description = [[Termite or Termitoidae has a straight waist, have short wings and black or dark brown color of the body.
			Termites are often called the silent destroye and feed on dead plants and trees as well as dead parts of living trees, including wood and wood in the soil. 
			Their good hygiene is important to their survival, as it keeps parasites and harmful bacteria under control within the colony.
			Worker termites undertake the labors of foraging, food storage, brood and nest maintenance, and some defense duties in certain species.
			]],
			source = [[www.softschools.com]]
	},
	{
		--Drywood Termite
			insectID = 5, --what insect it is.
			imgSource = "images/insectGallery/drywood.png", --just change the ant.png of what the image name is.
			description = [[Drywood Termite or Cryptotermes have two sets of wings, their bodies do not have attached wings, can be up to twelve mm long and have large mandibles with teeth and their pronotum is as wide or wider than the head.
			They infest wood and occasionally other cellulose material and fly out of their colony to create new colonies after mating.
			They cause can be substantial especially as they can go undetected for a long time before they are discovered.
			Drywood termite soldiers and workers are larger than the soldiers and workers in subterranean termite colonies and extract as much water as possible from the feces to conserve it.

			]],
			source = [[www.softschools.com]]
	},
	{
		--Dampwood Termite
			insectID = 5, --what insect it is.
			imgSource = "images/insectGallery/dampwood.png", 
			description = [[Dampwood Termite or Termopsidae have a large reddish-brown head and large multi-toothed mandibles and they can be twenty five mm long including their wings.
			It usually found to infest felled timber, dead trees and stumps or may be found in dead limbs of living standing trees.
			They are considered an economic pest and can produce a few eggs the first year.
			Damp wood termites tunnel their way into the wood and usually hide when they are eating wood so they can remain undetected and chemical treatment may not be necessary for the control of dampwood termites.
			]],
			source = [[www.pestworld.org]]
	},
	
	{
		--Formosan Termite
			insectID = 5, --what insect it is.
			imgSource = "images/insectGallery/formosan.png", 
			description = [[Formosan Termite or Coptotermes formosanus their head is oblong and had their color are yellowish brown and aboutone half inch long and have a thick covering of small hairs on their otherwise transparent wings.
			This termite has the ability to consume wood at a rapidly and their colony is large compared to others.
			They love of warm climates has meant that they have found suitable places to call home and can be seen in huge swarms in the evening during humid conditions usually between April and July.
			Formosanus is a generalist, colonial, social insect building colonies either above or below ground and produces naphthalene as a protective poison and it could be the most economically serious pest.
			]],
			source = [[www.pestworld.org]]
	},
	{
		--Subterranean Termites
			insectID = 5, --what insect it is.
			imgSource = "images/insectGallery/subterranean.png", 
			description = [[Subterranean Termites or Reticulitermes flavipes, their color is creamy white to dark brown black and dont have wings, they have 6 legs, its shape is long narrow and oval can grow to one eight inch long and they have also antennae, they have large brown heads and jaws.
			These termites live in underground colonies with as many as two million members and thier infestation begins when warm temperatures and heavy rainfall trigger.
			They are found in tropical and subtropical regions such as deserts and rain forests and nest in the soil to obtain moisture, but they also nest in wood that is often wet.
			They won’t easily infest structures that coated with paints, varnish and other polish.
			]],
			source = [[www.orkin.com]]
	},
	{
		--Bee
			insectID = 6, --what insect it is.
			imgSource = "images/insectGallery/bee.png", 
			description = [[Bee or Anthophila are short and thick bodies covered with hair.
			Bees are good pollinators of coconut, fruit trees, vegetables and gardens that can live inside old guitar, unused big speaker, woods with holes, upside down flower pot, unused old water jug and many other containers that they feel they are secure and habitable for them.  
			They are aggressive too when they are threaten. They attack the soft part of your skin like eyelid, lips, face, neck and they tangle in your hair.
			When you threaten apply ice wrapped in fabric to the bee sting for twenty minutes its venom called melittin may prevent HIV.
			]],
			source = [[mentalfloss.com]]
	},
	{
		--Bumble  Bee
			insectID = 6, --what insect it is.
			imgSource = "images/insectGallery/bumblebee.png", 
			description = [[Bumble Bee or Bombus have round bodies covered in soft hair, often in bands, in combinations of black, yellow, orange or red and white.
			Bumblebees are typically found in higher latitudes and/or high altitudes though exceptions exist and they feed on nectar using their long hairy tongues to lap up the liquid and gather pollen to feed their young.
			It is best known for having a sting on its tail which the bumble bee uses to protect itself from danger.
			Male bumble bees do not have a sting at all, only the female bumble bee has a sting on its tail.]],
			source = [[azanimals.com]]
	},
	{
		--Digger Bee
			insectID = 6, --what insect it is.
			imgSource = "images/insectGallery/diggerbee.png", 
			description = [[Digger Bee or Anthophorini are generally large up to three cm, very robust, hairy bees with visibly protruding faces.
			It can be pests or they can be beneficial and they dont live together in hives but live underground in individual nests.
			Only the females can sting and their sting is considered to be much less painful than that of a honey bee.
			They are also very non aggressive and will not sting unless handled or trapped in clothing so dont let children or pets play around nest sites.]],
			source = [[azanimals.com]]
	},
	{
		--Honey bee
			insectID = 6, --what insect it is.
			imgSource = "images/insectGallery/honeybee.png", 
			description = [[Honey bee or Apis are insects have a fuzzy yellowbrown to black appearance because they are covered with fine hairs.
			Honey bees pack a million neurons into a brain that measures a mere cubic millimeter, and they use every one of them.
			They are attracted to flowers with bright colors but they cannot see red and usually leave people alone but they are attracted to some soaps, perfumes, and hair sprays.
			Honey bees can sense changes in air pressure but these are often not directly linked to the storms.
			These insects are not aggressive by nature and will not sting unless protecting their hive from an intruder or are unduly provoked but thier sharp pain and some swelling and itching are natural reactions to a honeybee sting.
			]],
			source = [[www.backyardbeekeepers.com]]
	},
	{
		--Stingless Bee
			insectID = 6, --what insect it is.
			imgSource = "images/insectGallery/stinglessbee.png", 
			description = [[Stingless Bee or Meliponines are pretty small, has a yellow-brown to black appearance and they are covered with fine hairs.
			Stingless bees can be found in most tropical or subtropical regions of the world although only a few of them can produce honey on a scale such that they are farmed by humans.
			They are active all year round, although they are less active in cooler weather with some species presenting diapause.
			These bees are harmless to humans they have become an increasingly attractive addition to the suburban backyard and do have stingers but they are so small that they are ineffective and instead defend their colony by biting.
			It interact with both living and nonliving things and are influenced by the physical factors in their environments that are safe and suitable for their survival.
			]],
			source = [[en.wikipedia.org]]
	},
	{
		--Wasp
			insectID = 7, --what insect it is.
			imgSource = "images/insectGallery/wasp.png", 
			description = [[Wasp or Hymenoptera and have two pairs of wings, has few or no thickened hairs and its color black and yellow  and a medium sized flying insect that is found all around the world.
			It store sperm inside their body and control its release for each individual egg as it is laid; if a female wishes to produce a male egg, she simply lays the egg without fertilizing it.
			This insect is poisonous in human, the venom in wasps contains a pheromone that causes other wasps to become more aggressive and inactive when the sun is down returning to their nest at this time.]],
			source = [[en.wikipedia.org]]
	},
	{
		--Asian Giant Hornet
			insectID = 7, --what insect it is.
			imgSource = "images/insectGallery/hornet.png", 
			description = [[Asian Giant Hornet or Vespa mandarinia grows between two point seven cm and four point five cm in length and has two sets of eyes, one compound and one ocelli, both of which are brown in color along with their legs.
			It able to sting their victims repeatedly, injecting a complex venom that is known to contain eight different chemicals.
			They are found inhabiting higher altitude forests in both temperate and tropical areas and known for their fearless and extremely aggressive attitudes.
			Its venom can cause allergic reactions and multiple organ failure leading to death but it can be treated with epinephrine or adrenaline injection.]],
			source = [[en.wikipedia.org]]
	},
	{
		--Paper Wasp
			insectID = 7, --what insect it is.
			imgSource = "images/insectGallery/paperwasp.png", 
			description = [[Paper Wasp or Polistinae grows from zero point seven to one point zero inch long, their narrow bodies are most commonly dark brown in color, with black wings and yellow markings.
			Their nests include numerous compartments within which wasps lay their eggs and rear their young.
			Paper wasps feed on nectar and pollen although they also hunt for insects such as caterpillars with which to nourish their colonies larvae.
			Stings from paper wasps are extremely painful and may produce serious reactions to people who are allergic to the venom. If you get bitten use aloe Vera, baking soda and vinegar will help to lessen the pain.
			Despite their ecological benefits, paper wasp nests should not be permitted to develop in or near the home.
			]],
			source = [[www.orkin.com]]
	},
	{
		--Spider Wasp
			insectID = 7, --what insect it is.
			imgSource = "images/insectGallery/spiderwasp.png", 
			description = [[Spider Wasp or Pompilidae are black, metallic blue or reddish and the color of their wings is range from clear to smokygray or bright redorange.
			They are found throughout most of the world.The wasp lays an egg on the paralyzed spider which is eventually eaten by the wasps larva.
			These insects are not harmful to human and do not pose the same level of threat to humans as social species of bees, ants or wasps do.
			]],
			source = [[www.everythingabout.net]]
	},
	{
		--Yellow jacket Wasp
			insectID = 7, --what insect it is.
			imgSource = "images/insectGallery/yellowjacket.png", 
			description = [[Yellow jacket Wasp or Vespula, their body is yellow and black striped and they have two transparent wings and its stinger is located at the end of my abdomen.
			The queen yellow jacket wasp can lay thousands of eggs and has average life span from egg to adult is one season.
			They are easily provoked and will attack in force, chasing the perceived threat for large distances. 
			Sounds and vibrations such as those from a mower or trimmer, can trigger an attack even from a distance.
			If you are stung, DO NOT PANIC , the vast majority of people who are stung by yellow jackets are not allergic and have a very minor reaction.
			If you only have a local reaction, treat at home with a cold compact and Benadryl.
			Yellow jackets are sometimes mistakenly called bees given that they are similar in size and appearance and both sting but yellow jackets are actually wasps.
			]],
			source = [[www.gardeners.com]]
			
	},
	{
		--Bug
			insectID = 8, --what insect it is.
			imgSource = "images/insectGallery/bug.png", 
			description = [[Bug or Hemiptera have a body segmented into head, thorax and abdomen usually having two pairs of wings which are transparent outer wings that overlap a little at the tip and their legs are long and slim.
			They use their beak like mouthparts to pierce and penetrate prey, injecting them with digestive enzymes.
			Bugs can be found in almost any habitat including in and around water but will periodically come up to the surface for air.
			It undergo incomplete metamorphosis as they do not have a pupa stage and large swarms of bugs can cause severe damage to crops.
			Many of them are very different from each other, some can fly and some can not.
			]],
			source = [[www.ecospark.com]]
			
	},
	{
		--Bed Bug
			insectID =8, --what insect it is.
			imgSource = "images/insectGallery/bedbug.png", 
			description = [[Bed Bug or Cimicidae are light brown to reddish-brown, flattened, ovalshaped and have no hind wings. 
			The front wings are vestigial and reduced to padlike structures. These insects do not fly, but they can move quickly over floors, walls and ceilings.
			It has segmented abdomens with microscopic hairs that give them a banded appearance.
			Bed bug bites may lead to a range of health effects, including skin rashes, psychological effects and allergic symptoms.
			It might be possible that arbo viruses are transmissible and could be found in warm houses and especially nearby or inside of beds and bedding or other sleep.
			A combination of heat and drying treatments is most effective in killing them.
			]],
			source = [[www.webmd.com]]
			
	},
	{
		--Giant water Bug
			insectID = 8, --what insect it is.
			imgSource = "images/insectGallery/waterbug.png", 
			description = [[Giant water Bug or Belostomatidae, its body is mostly flat and oval shaped with dark brown, they are large kind of insect and have a foreleg pincers.
			Giant water bugs are popular food in Southeast Asia and may the largest insects occur worldwide.
			They are fierce predators which stalk, capture and feed on aquatic invertebrates, snails, crustaceans, fish and amphibians.
			Their eggs hatch in one to two weeks with total development time ranging from one to two months. Their adults have two pairs of wings but they rarely fly unless forced to by unfavorable water conditions or lack of an adequate food supply.
			In Ilocos and Visayas region in the Philippines and in other country like Thailand they can be eaten as finger food.]],
			source = [[en.wikipedia.org]]	
	},
	{
		--Jewel bug
			insectID = 8, --what insect it is.
			imgSource = "images/insectGallery/jewelbug.png", 
			description = [[Jewel bug or Scutelleridae, this insect has broad rounded bodies with an undivided shield covering the whole abdomen. 
			The heads of jewel bugs are triangular, the antennae have three to five segments and there are often brilliantly colors.
			Jewel Bug sucks sap from hibiscus plants, bottle trees and related species and females lay clusters of eggs around twigs and guard them until they hatch.
			These insects closely related to stink bugs, they may also produce an offensive odor when disturbed.
			Jewel bugs inject proteolytic enzymes in their saliva into plants, digesting plant matter into a liquid form which they then suck up.
			]],
			source = [[tenrandomfacts.com]]	
	},
	{
		--Stink Bug
			insectID = 8, --what insect it is.
			imgSource = "images/insectGallery/giantstickbug.png", 
			description = [[Stink Bug or Pentatomidae has half of an inch long body, green or brown color.
			They are considered agricultural pest insects because they can create large populations which feed on crops in which damaging the production.
			And a threat to cotton, corn, sorghum, soybeans, native and ornamental trees, shrubs, vines, weeds and many cultivated crops.
			They hibernate during the winter and the nymphs develop through five instars that require twenty nine days for development.
			Stinkbug can also cause damage but its population number is too low for it to have a significant impact and have an insatiable appetite for fruits and a vegetable,
			latching onto them with a needlelike probe before breaking down their flesh and sucking out juice until all that left is a mangled mess.
			They are attracted to blue, black and white light.
			]],
			source = [[news.nationalgeographic.com]]	
	},
	{
		--Beetle
			insectID = 9, --what insect it is.
			imgSource = "images/insectGallery/beetle.png", 
			description = [[Beetle or Coleoptera have two pairs of wings being hardened and thickened into a shell like protection for the rear pair and the beetle abdomen.
			Beetles are the largest group of living organisms known to science, bar none. 
			You can find beetles almost anywhere on the planet, from pole to pole, according to entomologist Stephen Marshall. 
			They inhabit both terrestrial and freshwater aquatic habitats, from forests to grasslands, deserts to tundras and from beaches to mountaintops.
			One of the traits that make beetles so easy to recognize is their hardened forewings which serve as armor to protect the more delicate flight wings and soft abdomen underneath.
			Beetles chew their food thoroughly before swallowing.
			In fact, the common name beetle is thought to derive from the Old English word BITELA, meaning little biter.
			]],
			source = [[insects.about.com]]	
	},
	{
		--Anobiid Beetle
			insectID = 9, --what insect it is.
			imgSource = "images/insectGallery/anobiidbeetle.png", 
			description = [[Anobiid Beetle or Anobiidae range from two to five mm long and are reddish to chocolate Brown in color.
			Anobiids occur primarily in older homes that have crawl spaces or damp basements and may spend four to five years of their lives.
			The complete life cycle from egg to adult normally takes about one to three years and infest seasoned softwood and the sapwood of seasoned hardwoods.
			They are most often encountered in crawl spaces, garages and outbuildings because of the high humidity in those areas.
			These beetles are very sensitive to dehydration and are unable to complete their development without adequate wood moisture. ]],
			source = [[www.doyourownpestcontrol.com]]	
	},
	{
		--Powderpost beetle 
			insectID = 9, --what insect it is.
			imgSource = "images/insectGallery/powderpostbeetle.png", 
			description = [[Powderpost beetle or Bostrichid is reddish brown to dark brown or black.
			Bostrichid beetles actually bore into wood to lay their eggs.
			Bamboo wood is more susceptible to bostrichid beetle damage than other types of wood and cause much less damage in homes so simply remove and replace the infested pieces of wood to avoid the damages.
			The average life cycle from egg to adult is completed in one year or longer.
			Before the female bostrichids lay her eggs, she will taste the wood to determine whether it contains enough starch and sugar to nourish her offspring.
			And to prevent from laying the eggs of bostrichids the wood must be coated of varnish and paint.
			]],
			source = [[www.clemson.edu]]	
	},
	{
		--Lyctid Beettle 
			insectID = 9, --what insect it is.
			imgSource = "images/insectGallery/lyctidbeetle.png", 
			description = [[Lyctid Beettle or Lyctus planicollis can grow four to six millimeters in length and is a dark brownish-black color. 
			They have antennae with eleven segments and their body is short yellowish down.
			The lyctid female beetle can lays up to fifty eggs and their eggs are white, cylindrical and about one millimeter long.
			They laid their eggs deep inside holes in wood either in the tunnels made by emerging adults or in pores, cracks and crevices and the eggs hatch in one to three weeks depending on the temperature.
			Lyctid beetles attack only sapwood of ringporous hardwoods such as oak, hickory, ash, mahogany, and walnut and its infestation is presence of small, circular exit holes in the surface of the wood and presence of very fine boring dust in the vicinity of the holes.
			They are discovered in newly built houses or other structures, the wood probably had become infested in a mill yard, lumberyard, or warehouse prior to being used in construction.
			]],
			source = [[www.clemson.edu]]	
	},
	{
		--Tiger beetle 
			insectID = 9, --what insect it is.
			imgSource = "images/insectGallery/tigerbeetle.png", 
			description = [[Tiger beetle or Cicindelinae has large bulging eyes, long, slender legs and large curved mandibles.
			They are found throughout the world with only a few places where they are absent Hawaii, Antarctica, the Maldives and Tasmania.
			Tiger beetles in the tropics are arboreal, but most run on the surface of the ground and they live along sea and lake shores, on sand dunes, around playa lakebeds and on clay banks or woodland paths, being particularly fond of sandy surfaces.
			They are considered a good indicator species and have been used in ecological studies on biodiversity and tiger beetles are pure predators and feed on any smaller insect or spider that they happen to spot. 
			Tiger beetles are so fast that they go blind while running, partly because their eyes are not able to gather enough photons to form an image during high speed.
			To avoid obstacles while running they hold their antennae rigidly and directly in front of them to mechanically sense their environment.
			]],
			source = [[www.minibeastwildlife.com]]	
	},
	{
		--Dragonfly 
			insectID = 10, --what insect it is.
			imgSource = "images/insectGallery/dragonfly.png", 
			description = [[Dragonfly or Anisoptera has large multifaceted eyes, two pairs of strong transparent wings and an elongated body.
			Dragonflies possess six legs, but most of them cannot walk well and can fly backwards, change direction in mid air and hover for up to a minute so they are the fastest flying insects in the world.
			They are major predators that eat mosquitoes and other small insects like flies, bees, ants, wasps and very rarely butterflies.
			One of the benefits of having dragonflies live nearby is that they eat many times their weight in mosquitoes every day.
			Dragonflies are predators, they themselves are subject to being preyed upon by birds, lizards, frogs, spiders, fish, water bugs and even other large dragonflies.
			]],
			source = [[insects.about.com]]	
	},
	{
		--Damselfly
			insectID = 10, --what insect it is.
			imgSource = "images/insectGallery/damselfly.png", 
			description = [[Damselfly or Zygoptera are small and delicate, has two large eyes, they are graceful fliers yet fly weakly with slender bodies and long, filmy, net veined wings and their colors can be stunningly vivid.
			Its larvae are in aquatic predators in freshwater habitats such as ponds, streams and even tree holes.
			Most damselflies usually have three leaflike gills at the tip of the abdomen and complete a life cycle in one year but some species take two years.
			When the eggs hatch they do not go through the larva and pupa transformations and it will hibernate over winter and return to the shallow water the following spring to begin the process anew.
			The damselfly nymph ranks as the sixth most importance food source for our trout.
			Damselflies will typically hold their more elegant tear drop-shaped wings close together and away or above the body and rest their wings together on both sides of their bodies.
			]],
			source = [[www.britannica.com]]	
	},
	{
		--Blue Dasher Dragonfly
			insectID = 10, --what insect it is.
			imgSource = "images/insectGallery/bluedasher.png", 
			description = [[Blue Dasher Dragonfly or Pachydiplax longipennis is a relatively small, it is brownish above and bright green and there are no hooks on the back.
			This dragonfly can be found near lakes, ponds and slow streams at low elevations and their heads contain of large eyes which take on a metallic look.
			Blue dashers are not blue yet and their wings may be folded forward to cover the eyes.
			They are active in summer season and their food is tiny flying insects.
			Blue dashers are eco-friendly they contribute to control pest by consuming hundreds of smaller insects each day and can usually be found in Negros Occidental, Philippines.
			]],
			source = [[www.insectidentification.org]]	
	},
	{
		--Ground Skimmer Dragonfly
			insectID = 10, --what insect it is.
			imgSource = "images/insectGallery/groundskimmer.png", 
			description = [[Ground Skimmer Dragonfly or Diplacodes trivialis has reddish brown eyes above or yellowish below and their wings are transparent with spots varying from dark blue or grey to black.
			It is easy species to identifycoz this is the commonest dragonflies in gardens, fields and playgrounds.
			They usually breed in rice fields, muddy puddles, swamps and pond edges and they are important predators in aquatic habitats in both the nymph and adult stages.
			The adults skimmer live less than two months, may take one or more years to complete all life stages.
			The male has a blue to bluegrey body with black on the tail, eyes are blue while female is greenish with black markings on the tail, eyes are green with red.]],
			source = [[nomadicimagery.wordpress.com]]	
	},
	{
		--Slender skimmer Dragonfly
			insectID = 10, --what insect it is.
			imgSource = "images/insectGallery/slenderrskimmer.png", 
			description = [[Slender skimmer dragonfly or Orthetrum sabina is fair bit smaller, color of the abdomen is black and white and thorax is mainly yellow and black, while the eyes are green.
			This species occupies a broad range of slow flowing and still water habitats, from ponds and lakes to wet rice fields and very tolerant of high salt contents and to habitat disturbance.
			The males and females slender skimmer are very similar in appearance and the larvae of it  can reach a total length of nineteen to twenty one millimeters and have spines in the middle of their abdominal segments.
			This species is not threatened.]],
			source = [[www.iucnredlist.org]]	
	},
	{
		--Grasshopper
			insectID = 11, --what insect it is.
			imgSource = "images/insectGallery/grasshopper.png", 
			description = [[Grasshopper or Caelifera is medium to large insects, have ears on their bellies, two pairs of wings, and long hind legs for jumping and usually have large eyes and are colored combination of brown, gray or green.
			Grasshoppers have been around for two hundred million years and had evolved before the dinosaurs appeared.
			They are good at detecting rhythm, but bad at detecting differences in pitch of notes.
			In Japan, grasshoppers are seen as a sign of good luck.
			It can be found in the temperate forests, tropical rainforests, meadows, areas near the ponds and streams, rocky areas and even deserts and can survive in different climates and in numerous habitats.
			Grasshoppers breathe through a series of holes called spiracles, they are located along the sides of the body.
			It also provide an important source of protein to people in many parts of the world.
			]],
			source = [[insects.about.com]]	
	},
		{
		--Katydid Grasshopper
			insectID = 11, --what insect it is.
			imgSource = "images/insectGallery/katydid.png", 
			description = [[Katydid Grasshopper or Tettigoniidae have large hind legs and are distinguished by their extremely long, threadlike antennae and the thick and often large and green and have long wings.
			Katydids are also found in cooler and drier regions throughout the world and they live on trees, bushes, or grasses, often matching the appearance of their surroundings.
			It feed chiefly on plant matter, though several also eat other insects and may be central to the food webs of tropical forest ecosystems.
			Katydids are camouflaged to blend with the leaves they feed on and these species are active during at night.
			They use their antennae to touch and smell each other and they also damage crop plants but this is rare  and eat other insects.
			]],
			source = [[insects.about.com]]	
	},
	{
		--Shorthorned Grasshopper
			insectID = 11, --what insect it is.
			imgSource = "images/insectGallery/shorthorned.png", 
			description = [[Short horned Grasshopper or Acrididea have a slender and short body with short antennae and their color is a green or straw color. 
			Shorthorned Grasshoppers live in tropical wet forests, grasslands, tundras, and aquatic vegetation areas coz they eat plants, grass and they take dry plant matter from the ground as their food to eat.
			These insects have no ears but they can certainly hear and they use their legs to produce various sounds.
			They are abundant during September and October, to control grasshoppers in rice fields use foliar sprays.
			]],
			source = [[insects.about.com]]	
	},
	{
		--Slantfaced Grasshopper
			insectID = 11, --what insect it is.
			imgSource = "images/insectGallery/slanthopper.png", 
			description = [[Slantfaced Grasshopper or Gomphocerinae is mostly green colored with a face that slants.
			The nymphs undergo five stages, molts at the completion of each stage, and become capable of reproduction.
			Slantface grasshoppers live in grasslands, wet meadows and prairie remnants and they can leap twenty times the length of his body.
			These grasshoppers have teeth or spines that are used for singing.
			Female slantfaced grasshopper can produce two hundred eggs in her life time and number of eggs per pod varies greatly, ranging from eight to one hundred and fifty.
			The slantfaced grasshoppers are usually found along the borders of marshes, in wet meadows.
			]],
			source = [[www.projectnoah.org]]	
	},
	{
		--Spurthroated Grasshopper
			insectID = 11, --what insect it is.
			imgSource = "images/insectGallery/spur.png", 
			description = [[Spurthroated Grasshopper or Melanoplus is smaller, colorful with bands, spots and short antennas.
			These kind of grasshopper found in Malaysia and Philippines.
			This insects are generally found in fields and open meadows, traveling from place to place.
			They are also one of the pests in agriculture and mostly for the damage that inflict to crops.
			]],
			source = [[www.insectidentification.org]]	
	},
	{
		--Stick insect
			insectID = 12, --what insect it is.
			imgSource = "images/insectGallery/stickinsect.png", 
			description = [[Stick insect or Phasmatodea, this insect often called walking sticks, range in size from the tiny, half inch long and have flattened bodies, leaf like shapes. 
			This insects dont bite, but they are not defenseless.
			Stick insects can even force themselves to molt again to regain a lost leg, can reproduce parthenogenetically without the need for males and can produce hundreds of all female offspring without ever mating.
			They drop eggs randomly on the forest floor and may may attract ants which then collect and store the eggs in their nests.
			]],
			source = [[animals.nationalgeographic.com]]	
	},
	{
		--Enigma Stick Insect
			insectID = 12, --what insect it is.
			imgSource = "images/insectGallery/prickly.png", 
			description = [[Enigma Stick Insect or Conlephasma enigma are wingless species and their colored with blues, greens, tans, and some orange around the joints along its back.
			This insect is found on Mount Halcon, on the Philippine island of Mindoro.
			It was found on the third highest mountain in the archipelago which is considered one of the richest areas of biodiversity in the world.
			The smelly odor that it sprays from glands behind its head when threatened similar to a skunk.]],
			source = [[blogs.discovery.com]]	
	},
	{
		--Giant Spiny Stick Insect
			insectID = 12, --what insect it is.
			imgSource = "images/insectGallery/giantspiny.png", 
			description = [[Giant Spiny Stick Insect or Eurycantha calcarata is very bulky and big stick, its color is always dark brown and their legs are thick and prickly.
			They even hide under bark and stones during the daytimes and when the males feel threatened disturbed, they will stand on their front legs and lift their hind legs up in the air to produce a very unpleasant smell.
			Both sexes are wingless and armored with spines on body and legs and they are found in trees and shrubs in the rain forest.
			You cannot feed these to reptiles or spiders and other insects  it concentrates the toxins in them.
			They are harmless to people you can keep as pets.]],
			source = [[www.keepinginsects.com]]	
	},
	{
		--Jungle nymph insect
			insectID = 12, --what insect it is.
			imgSource = "images/insectGallery/junglenymph.png", 
			description = [[Jungle nymph or Heteropteryx Dilatata is the heaviest of all stick insects. It is very large, brightly green in color and can live up to two years and their wings are really short.
			This species is not long and thin and quiet during the day and active during the night.
			It is considered one of the most beautiful species of stick insect and it eats blackberry, raspberry, rose and ivy leaves.
			It may take between twelve and fourteen months before an egg will hatch and you can also keep them as pets.
			 ]],
			source = [[www.keepinginsects.com]]	
	},
	{
		--Leaf Stick insect
			insectID = 12, --what insect it is.
			imgSource = "images/insectGallery/leafinsect.png", 
			description = [[Leaf Stick insect or Phylliidae, this insect use camouflage to take on the appearance of a leaf and their ccolor are usually green or brown.
			The female has large leathery forewings but they cannot fly while male has small tegmina and ample, nonleaflike, functional hindwings.
			Leaf insects are still nymphs you can already see the difference in body size and shape between males and females and can be found in tropical forest in the Philippines.
			This species of leaf insect eats black berries, rose and oak leaves but young nymphs cannot eat from undamaged leaves.
			Color and form provide protection by allowing these insects to blend with their environment.
			Their egg should be place in the moist area and scattered on the ground and hatch in the spring.
			 ]],
			source = [[www.encyclopedia.com]]	
	},
	{
		--Praying Mantis
			insectID = 13, --what insect it is.
			imgSource = "images/insectGallery/prayingmantis.png", 
			description = [[Praying Mantis or Mantodea are typical prayerlike posture with folded forelimbs.
			This  insects are beneficial in gardens because they eat large volume of pests.
			The freshly laid eggs are then coated with hard foam that maintains moisture during dry season and can live ten to twelve months.
			The praying mantis is named for its prominent front legs which are bent and held together at an angle that suggests the position of prayer.
			A praying mantis is just as likely to eat a native bee that is pollinating your plants as it is to eat a caterpillar and it is a large insect that can be found in gardens and is a predatory species that is always on the prowl eating any insect that moves.
			Mantis are cryptically colored to be like the plant on which they lie in wait and projections of the cuticles of the body and legs often enhance their likeness to bark, twigs, leaves or flowers.
			The praying mantis is the only insect that can look behind its shoulders and it is not limited to other animals because praying mantids will eat other mantis. 
			 ]],
			source = [[www.funology.com]]	
	},
	{
		--Dead Leaf Mantis
			insectID = 13, --what insect it is.
			imgSource = "images/insectGallery/deadleafmantis.png", 
			description = [[Dead Leaf Mantis or Phyllocrania paradoxa is always brown, it has dark and light spots, their back they have a huge shield.
			This species lives on land in undisturbed and secondgrowth rainforests and when threatened, they flash the bright colors on the insides of their front legs and expose the eyespots.
			They are sometimes featured in insect zoos as examples of unusual coloring and mantis requires high levels of heat and humidity similar to that of its native habitat in Southeast Asia.
			When the wings are raised suddenly, these colors become visible and can scare away predators such as birds and can be fed fruit flies a day or two after hatching.
			 ]],
			source = [[mantiskingdom.com]]	
	},
	{
		--Ghost Mantis
			insectID = 13, --what insect it is.
			imgSource = "images/insectGallery/ghostmantis.png", 
			description = [[Ghost Mantis or Phyllocrania paradoxa is camouflaged so as to appear as dead, dried up leaf material. It has an elongated head, a flattened, extended prothorax.
			This insect can hatch out up to three dozen young and inhabit dry areas, bushes, shrubs, and trees in the open.
			Ghost males mantis has much longer feathery antennas and both sexes have long wings and to determine their sex males will have eight and females will have six.
			Cooler temperature slows its metabolism and lengthens the life span while warmer temperature speeds up the metabolism of the mantis and will shorten its life span.
			This species prefer flying insect as their source of food and one of the most popular species of mantis in the mantis hobby because it looks good, is very easy to keep.
			Female Ghost Mantis can live up to eight months as adults while males live a much shorter life and it can remain unseen by predator such as insect eating birds while waiting for its own prey.
			 ]],
			source = [[www.keepinginsects.com]]	
	},
	{
		--Giant Asian mantis
			insectID = 13, --what insect it is.
			imgSource = "images/insectGallery/giantmantis.png", 
			description = [[Giant Asian mantis or Hierodula membranacea ranges in color from bright green to dull brown.
			This type of mantis is popular among those who keep insects as pets and has also been noted to have produced parthenogenically.
			They have a yellowish color on their inner foreleg distinguishable from the black eyespot and white dots and can develop a different color in a matter of days.
			Giant Asian Mantis females are relatively often cannibalistic and will produce around five to eight ootheca.
			It lives in hot and humid climates of temperatures with humidity and after mating, the female may attempt to eat the male to increase fertility which will entail a struggle.
			 ]],
			source = [[www.keepinginsects.com]]	
	},
	{
		--Orchid mantis
			insectID = 13, --what insect it is.
			imgSource = "images/insectGallery/orchidmantis.png", 
			description = [[Orchid mantis or Hymenopus coronatus is pink and white, with flattened limbs and the four walking legs resemble flower petals.
			This mantis shows some of the most pronounced sexual dimorphism of any species of mantis and they are carnivorous, mainly catching other insects.
			The orchid mantis is said to be highly favored by insect breeders but rare and expensive and they are very popular and loved because of its beautiful bright colors and amazing camouflage.
			When babies hatch, they eat the other babies and it actually pretends to be an orchid to lure butterflies, bees and other pollinators to their deaths.
			From hatching to death is a span of about eight months.
			 ]],
			source = [[www.gmanetwork.com]]	
	},
	{
		--crickets
			insectID = 14, --what insect it is.
			imgSource = "images/insectGallery/cricket.png", 
			description = [[Crickets or Gryllidae have flattened bodies and long antennae.
			Crickets have relatively powerful jaws, and several species have been known to bite humans and they are popular as a live food source for carnivorous pets like frogs, lizards, tortoises, salamanders and spiders.
			Crickets is a good luck charm in China.
			The life cycle of a cricket usually spans no more than three months and best known by the song they produce.
			Several species of crickets are listed as endangered.
			They have one pair of one inch long antennas, called feelers that can detect movement of the prey and facilitate finding of food.
			Most species of crickets live on the ground but some of them live under the ground, inside the caves or high on the trees.
			 ]],
			source = [[www.softschools.com]]	
	},
	{
		--Camelback Cricket
			insectID = 14, --what insect it is.
			imgSource = "images/insectGallery/camelbackcricket.png", 
			description = [[Camelback Cricket or Rhaphidophoridae are rounded hump back, their antennae can be the same length as their bodies and their color are brown with black.
			Camel crickets do not chirp, they like warm, dark, damp environments as found in caves or in woods under rocks and frequently found in basements and cellars.
			To get rid of camelback crickets is to eliminate the moisture where they are found.
			Camel crickets are of little economic importance except as a nuisance in buildings and homes, especially basements but breeding in a basement they can be difficult to get rid of.
			 They may reproduce indoors, especially in situations that provide continuous dark, moist conditions, such as a basement, shower or laundry area, as well as organic debris to serve as food.
			 ]],
			source = [[en.wikipedia.org]]	
	},
	{
		--Cave Cricket
			insectID = 14, --what insect it is.
			imgSource = "images/insectGallery/cavecricket.png", 
			description = [[Cave Cricket or Rhaphidophoridae are wingless, brown in color and their bodies and a set of long antennae.
			The bodies of these crickets are bent forward and appear to be humped at the back and this species live without sufficient food sources.
			Cave cricket have been known to damage clothing and curtains when they invade homes and may move inside when their environment becomes too hot and dry.
			Cave cricket and camelback cricket were came from same family of cricket snd these crickets are commonly found in caves although some species also dwell in cool, damp areas such as beneath rotten logs, damp leaves and stones.
			These cave crickets are pale in comparison to other species and are equipped with strong bristles on the back legs to enable digging.
			 ]],
			source = [[www.orkin.com]]	
	},
	{
		--House Cricket
			insectID = 14, --what insect it is.
			imgSource = "images/insectGallery/housecricket.png", 
			description = [[House Cricket or Acheta domesticus are light brown in color and feature three stripes on their heads, as well as long, slender antennae and their wings  are held flat against the back and are bent at the sides.
			They have been introduced from Asia trough their use as pet food and fishing bait.
			The life cycle of a house cricket is typically two to three months and they can survive in a cold weather.
			House crickets produce a very common night time sound and tend to be found indoors most of the time.
			House Crickets normally live outdoors preferring warm weather but will move indoors when it gets colder usually in late summer.
			They survives the cold winter months in its habitat by finding a warm place to live, with many seeking shelter inside a home, barn, basement or other structure.
			It will also devour other bugs, plant matter and fabrics when food becomes hard to locate. 
			 ]],
			source = [[www.ehow.com]]	
	},
	{
		--Mole Cricket
			insectID = 14, --what insect it is.
			imgSource = "images/insectGallery/molecricket.png", 
			description = [[Mole Cricket or Gryllotalpidae, they measure two to four cm in length and are thickbodied and with small eyes. 
			The body is brown in color and covered with fine velvety hairs, and the forelegs are greatly modified for digging.
			They are found on every continent except for Antarctica and known as pests that damage grass and turf. 
			Mole crickets are live primarily underground and hibernate in winter that capable of flight and may travel as far as five miles during mating season.
			They can deliver a harmless but their bite  is painful.
			Mole crickets are omnivores, feeding on larvae, worms, roots and grasses. 
			Common predators of mole crickets include birds, rats, skunks, armadillos, raccoons, foxes and ants. 
			In the Philippines in province of Pampangga they cooked it as the Kampampangan adodung kamaru and must be considered as a pest in crops.
			 ]],
			source = [[www.ehow.com]]	
	},
	{
		--Centipede
			insectID = 15, --what insect it is.
			imgSource = "images/insectGallery/centipede.png", 
			description = [[Centipede or Chilopoda have a rounded or flattened head, bearing a pair of antennae at the forward margin.
			Centipedes are among the largest terrestrial invertebrate predators and often contribute significantly to the invertebrate predatory biomass in terrestrial ecosystems.
			Centipedes are only capable of discerning light and dark and not of true vision and probably used for sensing vibrations and may even provide a sense of hearing.
			They are predators and mainly use their antennae to seek out their prey.
			The centipede bites are not life threatening to humans and present the greatest risk to children and those who develop allergic reactions.
			Treatment of the bite site with very warm but not scalding water and washing with soap will deactivate the majority of the centipede poison proteins and a severe bite from a large centipede on a child, senior or person with a weakened heart can cause heart attack if untreated but this is exceptionally rare.
			 ]],
			source = [[en.wikipedia.org]]	
	},
	{
		--Fire Centipede
			insectID = 15, --what insect it is.
			imgSource = "images/insectGallery/firecentipede.png", 
			description = [[Fire Centipede or Scolopendra subspinipes have flattened, segmented bodies with many legs twenty to sixty legs, depending on the length. Each leg is slightly longer than the one in front of it.
			The Fire Centipede is widely distributed in tropical Asia and Africa.
			Fire centipede bite may shock the victim as a burning toxin induces instant pain and capable of spitting a poisonous bioluminescent chemical substance.
			Immediate treatment of the bite wash it with soap will deactivate the majority of the centipede poison proteins.
			Feathery antennae splay like delicate fern fronds in front and back and their body segments are hard and shiny black chitins mottled with vibrant orange and yellow mottling.
			The Fire centipede is aggressive and venomous, the venom of the centipede will cause extreme pain for a few hours and a bite is considered medically significant although there are no known deaths caused by this centipede. 
			 ]],
			source = [[bransonswildworld.com]]	
	},
	{
		--Giant Centipede
			insectID = 15, --what insect it is.
			imgSource = "images/insectGallery/giantcentipede.png", 
			description = [[Giant Centipede or Scolopendra gigantea have 23 pairs of legs, flat bodied with poisonous claws on their forelegs and they have black heads and rears with bright yellow bodies and limbs.
			Giant centipedes are poisonous, they are found in rocky and desert regions.
			They are poorly sighted and mostly rely on their antennas to locate prey and they are the largest species of centipedes.
			This centipede is nervous and jumpy and may move rapidly if disturbed. Its venom is toxic to human may cause severe pain, swelling, chills, fever and weakness.
			 ]],
			source = [[en.wikipedia.org]]	
	},
	{
		--House Centipede
			insectID = 15, --what insect it is.
			imgSource = "images/insectGallery/housecentipede.png", 
			description = [[House Centipede or Scutigera coleoptrata measures two point five to five cm in length, flattened body, it has 30 legs and grayish yellow to brown in color and have lengthy, slender antennae and three longitudinal dorsal stripes.
			They are commonly found in kitchen cabinets, bathrooms, basements, garages and crawlspaces beneath buildings.
			The bite of a house centipede rarely induces serious effects in humans. 
			They can be considered beneficial to human by controlling pests in the house.
			House centipede bites make use of antibacterial soap and rinse it with warm water.
			They are very fast creatures, and able to withstand falling at great speed that can reach up to fifteen body lengths per second when dropped, surviving the fall.
			They are commonly found under logs and loose bark and often seen running in basements and attics and other cool, indoor places.
			In controling them apply prays or dusts should be applied to sites where centipedes are suspected such as cracks and crevices in concrete slabs, block walls.
			 ]],
			source = [[en.wikipedia.org]]	
	},
	{
		--Stone Centipede
			insectID = 15, --what insect it is.
			imgSource = "images/insectGallery/stonecentipede.png", 
			description = [[Stone Centipede or Lithobius have flattened bodies, they all have fifteen pairs of legs, a length of approximately two inches and brownish in color.
			Stone centipedes are found under stones or bark, in soil and decaying matter and some are common in gardens.
			The bite leads to full pain intensity directly after the bite and antibiotics are used to keep the wound itself from becoming infected or necrotic.
			The two bulges on the sides of the head are the poison claws that they use to grab their prey.
			This group has lost the compound eyes and sometimes has no eyes altogether.
			 ]],
			source = [[stonecentipede.weebly.com]]	
	},
	{
		--Spider
			insectID = 16, --what insect it is.
			imgSource = "images/insectGallery/spider.png", 
			description = [[Spider or Araneae, their body segmented jointed with limbs, they have two separate tagmata, the head and thorax and consist of eight legs.
			Spiders are found worldwide on every continent except for Antarctica.
			The smallest spider is the Patu digua endemic in Colombia and dont rely totally on muscles to move their legs, they use blood pressure as well.
			Spiders are predators that eat various other arthropods, usually smaller than themselves.
			Spiders bite may cause pain but in most cases, the venom is usually harmless.
			Dont panic because panicking will make the venom travel faster in your bloodstream. ]],
			source = [[www.arkive.org]]	
	},
	{
		--Crab Spider
			insectID = 16, --what insect it is.
			imgSource = "images/insectGallery/crabspider.png", 
			description = [[Crab Spider or Thomisidae, this species color from pale yellow to white or green, often found in flowers and leaves.
			Crab spiders use their powerful front legs to grab and hold onto prey while paralyzing it with a venomous bite but they are not harmful to humans.
			Their first four legs extend out to the sides and are longer than the back four legs and the can catch their prey using their front legs.
			Crab spiders are reminiscent of water crabs in both shape and movement. They can walk forwards, sideways or even backwards.
			They can change their color to match whatever their surroundings are.
			 ]],
			source = [[en.wikipedia.org]]	
	},
	{
		--House Spider
			insectID = 16, --what insect it is.
			imgSource = "images/insectGallery/housespider.png", 
			description = [[House Spider or Diaspidae has four pairs of hairy legs, and their bodies are also hairy and brown in color.
			House spider is usually the spider most often encountered indoors and randomly selects its web locations and creates a tangled web.
			The web produces vibrations throughout the strand, signaling to the common house spider that prey is present.
			Spiders house are harmless to people and are incapable of biting.
			The presence of common house spiders is typically characterized by the formation of cobwebs.
			Male and female house spiders are similar in appearance, but males have a more slender abdomen and longer legs.
			When the male died the female eats him; the nutrients within the male contribute to the development of his young.
			This abundance of empty webs is caused by the common house spiders propensity to spin webs in various locations until it finds the most suitable place to catch prey. 
			So regular housecleaning is very important in the control of spiders indoors.
			 ]],
			source = [[www.arkive.org]]	
	},
	{
		--Jumping spider
			insectID = 16, --what insect it is.
			imgSource = "images/insectGallery/jumpingspider.png", 
			description = [[Jumping spider or Salticidae have four pairs of eyes and have plumose hairs, colored or iridescent hairs, front leg fringes, structures on other legs.
			In tropical regions are most influenced and known for their swift reflexes and leaping abilities.
			Jumping spiders are not web-weaving arachnids, but they do produce silk.
			Silk may also function as a dragline while jumping, allowing jumping spiders to control their fall and trace their steps.
			Jumping spiders are among the easiest to distinguish from similar spider families because of the shape of the cephalothorax and their eye patterns and equipped with eight eyes, four of which are apportioned to the face and four of which are located at the highest point of the carapace.
			 ]],
			source = [[www.orkin.com]]	
	},
	{
		--Redback spider
			insectID = 16, --what insect it is.
			imgSource = "images/insectGallery/redbackspider.png", 
			description = [[Redback spider or Latrodectus hasseltii has a body around one centimeter long, with slender legs, the first pair of which is longer than the rest. 
			And it has a round abdomen is a deep black with a red longitudinal stripe on the upper surfaces.
			The female spider eats the male after mating, and goes after much bigger prey than most spiders, including mice and small vertebrates.
			Bite from a female Redback spider is extremely venomous and can be fatal to children and elderly people.
			If you get bitten by this species apply ice or cold water and its bite may kill young.
			The redback is one of the few spider species that can be seriously harmful to humans
			and its preferred habitat has led it to being responsible for the large majority of serious spider bites and 
			generalized symptoms of nausea, vomiting, headache, and agitation may also occur and indicate severe poisoning.
			They are especially common in disturbed and urban areas, in association with human habitation.]],
			source = [[en.wikipedia.org]]	
	},
}


return M