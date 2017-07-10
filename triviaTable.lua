--put all trivia here 

--read first!!
--read carefully!!

--for the insectID---------------
--for example if the trivia is for the ant,
--and level 1 is ant, then its insectID is 1
--if the trivia is for mosquito,
--and level 2 is mosquito, then its insectID is 2
--remember this must contain a integer!
--and pay attention! it must end with a , (coma)

--for the trivia----------------
--just change the string inside the [[ ]]
--dont make the trivia too long! if possible make it short.
--the string inside must not contain any special character!
--period (.) is acceptable, but " or ' or any special char is not!
--and pay attention! it must end with a , (coma)

--for the source----------------
--just change the string inside the [[ ]]
--the string inside must not contain any special character!
--period (.) is acceptable, but " or ' or any special char is not!
--if the source contains any special characters. just remove it and
--make it like www.google.com, www.wikipedia.com
--and pay attention! it must end with a , (coma)

--to avoid any errors just copy the example below.
--start copying on the indicator and end on the indicator
--make sure that you included that {}

local M = {}

	M.triviaTableList = {
	
--start copying here
		--Mosquito
		{
		--1
			insectID = 2,
			trivia = [[Asian Tiger mosquito is a vector of Dengue Fever and carrier of Yellow Fever and heartworm in pets.]],
			source = [[ento.psu.edu.com]],
		},
		{
		--2
			insectID = 2,
			trivia = [[Anopheles mosquito has been given Malaria Mosquito name because it is considered the primary vector of the disease.]],
			source = [[www.google.com]],
		},

		{
		--3
			insectID = 2,
			trivia = [[House mosquitoes can sense carbon dioxide up to one hundred feet away.]],
			source = [[ento.psu.edu.com]],
		},
		{
		--4
			insectID = 2,
			trivia = [[Tiger mosquitos name comes from its black and white striped appearance.]],
			source = [[ento.psu.edu.com]],
		},
		{
		--5
			insectID = 2,
			trivia = [[Mosquito wings beat three hndred to six hundred times per second.]],
			source = [[ento.psu.edu.com]],
		},
		{
		--6
			insectID = 2,
			trivia = [[Females mosquito are blood eating pests.]],
			source = [[ento.psu.edu.com]],
		},
		{
		--7
			insectID = 2,
			trivia = [[Females mosquito feeding on blood transmit harmful human and livestock diseases such as malaria yellow fever and filariasis.]],
			source = [[ento.psu.edu.com]],
		},
		{
		--8
			insectID = 2,
			trivia = [[Mosquitoes use exhaled carbon dioxide body odors and temperature on their victims.]],
			source = [[ento.psu.edu.com]],
		},
		{
		--9
			insectID = 2,
			trivia = [[Female mosquito use blood not for their own nourishment but as source of protein for their eggs.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--10
			insectID = 2,
			trivia = [[Mosquito borne diseases cause millions of deaths worldwide every year.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--11
			insectID = 2,
			trivia = [[Mosquitoes are insects that have been around more than thirty million years.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--12
			insectID = 2,
			trivia = [[Tiger mosquitoes bite multiple hosts during development cycle of the egg making particularly efficient at transmitting diseases.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--13
			insectID = 2,
			trivia = [[Female northern mosquito need one to three blood meals to develop brood of eggs.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--14
			insectID = 2,
			trivia = [[Northern house mosquitoes a vector of disease like meningitis.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--15
			insectID = 2,
			trivia = [[Adult females northern house mosquitoes  lay fifty to two hundred eggs per oviposition.]],
			source = [[animals.nationalgeographic.com]],
		},
		--Ants
		{
		--1
			insectID = 1,
			trivia = [[Fire ants nest in soil more than two undred thousand ants.]],
			source = [[www.google.com]],
		},
		{
		--2
			insectID = 1,
			trivia = [[Pharoah ant use positive feedbacks of foraging.]],
			source = [[www.google.com]],
		},
		{
		--3
			insectID = 1,
			trivia = [[Pavement ant reproduction occurs when winged males and females swarm.]],
			source = [[www.orkin.com]],
		},
		{
		--4
			insectID = 1,
			trivia = [[Field ants nests under stones logs and sidewalks.]],
			source = [[www.google.com]],
		},
		{
		--5
			insectID = 1,
			trivia = [[Field ants eat honeydew it is a sweet substance that they get from insects like mealybugs and aphids.]],
			source = [[www.orkin.com]],
		},
		{
		--6
			insectID = 1,
			trivia = [[Fire ants are omnivores they feed on animal or vegetable sources of food.]],
			source = [[www.google.com]],
		},
		{
		--7
			insectID = 1,
			trivia = [[Ant body divided into three sections the head and thorax and gaster. ]],
			source = [[insected.arizona.edu]],
		},
		{
		--8
			insectID = 1,
			trivia = [[Use an aspirator or small shovel to remove ants and brood from the colony. ]],
			source = [[insected.arizona.edu]],
		},
		{
		--9
			insectID = 1,
			trivia = [[Pavement ants dont bite they do possess ability to sting.]],
			source = [[insected.arizona.edu]],
		},
		{
		--10
			insectID = 1,
			trivia = [[Pavement ants latin name is Tetramorium caespitum.]],
			source = [[insected.arizona.edu]],
		},
		{
		--11
			insectID = 1,
			trivia = [[Pavement ants invade buildings while foraging for food.]],
			source = [[insected.arizona.edu]],
		},
		{
		--12
			insectID = 1,
			trivia = [[Fire Ants are very active and aggressive they will sting any intruding animal repeatedly.]],
			source = [[insected.arizona.edu]],
		},
		{
		--13
			insectID = 1,
			trivia = [[Pharaoh ants are disease carriers for salmonella and streptococcus and staphylococcus]],
			source = [[www.orkin.com]],
		},
		{
		--14
			insectID = 1,
			trivia = [[Field ants dont sting but they bite.]],
			source = [[insected.arizona.edu]],
		},
		{
		--15
			insectID = 1,
			trivia = [[Pharoah ants are also known to spread infection especially in private nursing facilities and clinics and  hospitals and can cause contamination of sterile equipment.]],
			source = [[insected.arizona.edu]],
		},
		--FLY
		{
		--1
			insectID = 3,
			trivia = [[The larvae of drain fly have been known to survive dramatic temperature swings and low oxygen levels.]],
			source = [[www.pestdefense.com]],
		},
		--2
		{
			insectID = 3,
			trivia = [[Adult drain flies live about two weeks but newly emerged adults rapidly replace them.]],
			source = [[www.pestdefense.com]],
		},
		--3
		{
			insectID = 3,
			trivia = [[Drain flies can go through one generation in as little as one week. ]],
			source = [[www.pestdefense.com]],
		},
		--4
		{
			insectID = 3,
			trivia = [[Female drain flies lay eggs in moist.]],
			source = [[www.britannica.com]],
		},
		--5
		{
			insectID = 3,
			trivia = [[Fly life expectancy is eight days to two months.]],
			source = [[www.britannica.com]],
		},
		--6
		{
			insectID = 3,
			trivia = [[One pair of flies produce more than one million offspring.]],
			source = [[www.britannica.com]],
		},
		--7
		{
			insectID = 3,
			trivia = [[Adult drain flies live about two weeks.]],
			source = [[www.britannica.com]],
		},
		--8
		{
			insectID = 3,
			trivia = [[Every time a fly lands it sloughs off thousands of microbes.]],
			source = [[www.britannica.com]],
		},
		--9
		{
			insectID = 3,
			trivia = [[Fruit fly hairy bodies and sticky foot pads carry germs and bacteria from sites that have been contaminated. ]],
			source = [[www.pestdefense.com]],
		},
		--10
		{
			insectID = 3,
			trivia = [[Adult phorid fly run across windows TV screens tables walls and plant foliage.]],
			source = [[www.pestdefense.com]],
		},
		--11
		{
			insectID = 3,
			trivia = [[Drain flies can go through one generation in as little as one week.]],
			source = [[www.pestdefense.com]],
		},
		--12
		{
			insectID = 3,
			trivia = [[Housefly as a larva it eat organic material like plants food or juices in trash cans.]],
			source = [[www.pestdefense.com]],
		},
		--13
		{
			insectID = 3,
			trivia = [[Housefly is a perfect host for many types of bacteria proven carriers of such germs as gangrene and Typhoid and leprosy and tuberculosis and amoebic dysentery and bubonic plague and listeria.]],
			source = [[www.pestdefense.com]],
		},
		--14
		{
			insectID = 3,
			trivia = [[The phorid fly is also known regionally as the scuttle and coffin fly because it favors decaying or moist organic material as both source of food and prime site for laying eggs.]],
			source = [[www.pestdefense.com]],
		},
		--15
		{
			insectID = 3,
			trivia = [[Phorid fly spends eleven to twenty two or more days to become adults.]],
			source = [[www.pestdefense.com]],
		},

		--Cockroach
		{
		--1
			insectID = 4,
			trivia = [[Cockroach can live for a week without its head.]],
			source = [[www.britannica.com]],
		},
		--2
		{
			insectID = 4,
			trivia = [[American cockroaches can hold their breath for up to forty minutes.]],
			source = [[www.britannica.com]],
		},
		{
		--3
			insectID = 4,
			trivia = [[Cockroaches can run up to three miles in an hour.]],
			source = [[www.britannica.com]],
		},
		{
		--4
			insectID = 4,
			trivia = [[Wings of wood cockcroach found on females are much shorter and serve no purpose as females do not fly.]],
			source = [[www.pestcontrol.com]],
		},
		{
		--5
			insectID = 4,
			trivia = [[Green cockroach actually only green in the adult stage.]],
			source = [[www.britannica.com]],
		},
		{
		--6
			insectID = 4,
			trivia = [[Green cockroach fly toward doors and windows where light shines out.]],
			source = [[www.britannica.com]],
		},
		{
		--7
			insectID = 4,
			trivia = [[Woods cockroaches produce egg cases that contain twenty to twenty four eggs.]],
			source = [[www.pest-control.com]],
		},
		{
		--8
			insectID = 4,
			trivia = [[Sand cockroaches live in sand dunes for most of the year and burrowing deep within the soil.]],
			source = [[www.pestcontrol.com]],
		},
		{
		--9
			insectID = 4,
			trivia = [[American cockroaches spread bacteria and parasites when permitted to continuously infest homes.]],
			source = [[www.pestcontrol.com]],
		},
		{
		--10
			insectID = 4,
			trivia = [[Adult american cockroach possess wings which are as long as the length of the abdomen on females and slightly longer on males.]],
			source = [[www.pestcontrol.com]],
		},
		{
		--11
			insectID = 4,
			trivia = [[Before reaching adulthood American cockroach nymphs look like smaller wingless adults.]],
			source = [[www.pest-control.com]],
		},
		{
		--12
			insectID = 4,
			trivia = [[Surinam cockroach lives up to seven months and produces three egg cases in a lifetime.]],
			source = [[www.pest-control.com]],
		},
		{
		--13
			insectID = 4,
			trivia = [[Surinam cockroach have an average of three egg cases which contain an average of twenty four eggs.]],
			source = [[www.pest-control.com]],
		},
		{
		--14
			insectID = 4,
			trivia = [[Surinam cockroach lives for up to seven months and produces three egg cases in a lifetime.]],
			source = [[insect.answer.com]],
		},
		{
		--15
			insectID = 4,
			trivia = [[Surinam cockroaches burrowing insects that cause damage to vegetation.]],
			source = [[insect.answer.com]],
		},
		--Termite
		{
		--1
			insectID = 5,
			trivia = [[Drywood termite soldiers have large mouth parts.]],
			source = [[www.britannica.com]],
		},
		{
		--2
			insectID = 5,
			trivia = [[Termites lived one hundred thirty million years ago.]],
			source = [[www.orkin.com]],
		},
		{
		--3
			insectID = 5,
			trivia = [[Queen Formosan termite produce more than one thousand eggs per day.]],
			source = [[www.orkin.com]],
		},
		{
		--4
			insectID = 5,
			trivia = [[Head of a Formosan termite soldier is oblong]],
			source = [[www.orkin.com]],
		},
		{
		--5
			insectID = 5,
			trivia = [[Dampwood termite queen reproduce twelve in a batch once per year.]],
			source = [[www.orkin.com]],
		},
		{
		--6
			insectID = 5,
			trivia = [[Dampwood termite colonies has four thousand members.]],
			source = [[www.termite.com]],
		},
		{
		--7
			insectID = 5,
			trivia = [[Subterranean termite are creamy white in color.]],
			source = [[www.termite.com]],
		},
		{
		--8
			insectID = 5,
			trivia = [[Subterranean termite infestation begins warm temperatures and heavy rainfall.]],
			source = [[www.termite.com]],
		},
		{
		--9
			insectID = 5,
			trivia = [[Subterranean termite SWARMERS have four wings.]],
			source = [[www.termite.com]],
		},
		{
		--10
			insectID = 5,
			trivia = [[Subterranean termite SOLDIERS have no wings.]],
			source = [[www.termite.com]],
		},
		{
		--11
			insectID = 5,
			trivia = [[Formosan termites has three forms castes alates the protector soldiers and the workers.]],
			source = [[www.termite.com]],
		},
		{
		--12
			insectID = 5,
			trivia = [[First formosan form are castes which are social insects.]],
			source = [[www.termite.com]],
		},
		{
		--13
			insectID = 5,
			trivia = [[Second Formosan form are alates which are wingless or winged reproductives]],
			source = [[www.termite.com]],
		},
		{
		--14
			insectID = 5,
			trivia = [[Third Formosan form are protector soldiers and the workers.]],
			source = [[www.termite.com]],
		},
		{
		--15
			insectID = 5,
			trivia = [[Formosan termites are disturbed the soldiers release white liquid used for defense.]],
			source = [[www.termite.com]],
		},


		--Bee
		{
		--1
			insectID = 6,
			trivia = [[Bees can live for nine months.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--2
			insectID = 6,
			trivia = [[Bees have two stomachs.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--3
			insectID = 6,
			trivia = [[Bees have five eyes.]],
			source = [[animals.nationalgeographic.com]],
		}, 
		{
		--4
			insectID = 6,
			trivia = [[Bee collect nectar from about two million flowers.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--5
			insectID = 6,
			trivia = [[Honey bees have one seventy odorant receptors.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--6
			insectID = 6,
			trivia = [[Female bumblebees can sting repeatedly.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--7
			insectID = 6,
			trivia = [[Honey is one of the safest food most harmful bacteria cannot live in honey for any length of time.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--8
			insectID = 6,
			trivia = [[There are fifty thousand honey bees in a hive.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--9
			insectID = 6,
			trivia = [[Honey bee fly fifty mph.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--10
			insectID = 6,
			trivia = [[Honey bee have four wings.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--11
			insectID = 6,
			trivia = [[Bumblebees dont have ears.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--12
			insectID = 6,
			trivia = [[The male digger bee cannot sting at all.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--13
			insectID = 6,
			trivia = [[Honeybees communicate by dancing.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--14
			insectID = 6,
			trivia = [[Stingless bees produce one kg of honey per year.]],
			source = [[animals.nationalgeographic.com]],
		},
		{
		--15
			insectID = 6,
			trivia = [[Bumblebee distinctive buzz caused by the bee flight muscles.]],
			source = [[animals.nationalgeographic.com]],
		},
		--Wasp
		{
		--1
			insectID = 7,
			trivia = [[Wasps are inactive when the sun is down.]],
			source = [[www.wikihow.com]],
		},
		{
		--2
			insectID = 7,
			trivia = [[Wasps are light sensitive.]],
			source = [[www.wikihow.com]],
		},
		{
		--3
			insectID = 7,
			trivia = [[Wasps feed their young meat of larvae of other insect.]],
			source = [[www.wikihow.com]],
		},
		{
		--4
			insectID = 7,
			trivia = [[Wasps sting can be fatal to some who is allergic.]],
			source = [[www.wikihow.com]],
		},
		{
		--5
			insectID = 7,
			trivia = [[Yellow Jackets wasp primarily eat fruit and plant nectar.]],
			source = [[www.wikihow.com]],
		},
		{
		--6
			insectID = 7,
			trivia = [[Wasps feed their young meat of larvae of other insect.]],
			source = [[www.wikihow.com]],
		},
		{
		--7
			insectID = 7,
			trivia = [[The venom in wasps contains pheromone causes other wasps more aggressive.]],
			source = [[www.wikihow.com]],
		},
		
		{
		--8
			insectID = 7,
			trivia = [[Sting of a wasp should wear off within twenty four hours.]],
			source = [[www.wikihow.com]],
		},
		{
		--9
			insectID = 7,
			trivia = [[Male wasp is called a Drone. ]],
			source = [[www.wikihow.com]],
		},
		{
		--10
			insectID = 7,
			trivia = [[Hornet wasp sting humans if theyre disturbed but most are not aggressive at other times. ]],
			source = [[www.wikihow.com]],
		},
		{
		--11
			insectID = 7,
			trivia = [[Some wasps are predatory while others are parasitic. ]],
			source = [[www.wikihow.com]],
		},
		{
		--12
			insectID = 7,
			trivia = [[Male wasp will fertilize female wasps to become the queens of the following year. ]],
			source = [[www.wikihow.com]],
		},
		{
		--13
			insectID = 7,
			trivia = [[Wasps are used by humans as parasites to control pests such as in agriculture.]],
			source = [[www.wikihow.com]],
		},
		{
		--14
			insectID = 7,
			trivia = [[Wasps used as pollinators and help with plant fertilization.]],
			source = [[www.answers.com]],
		},
		{
		--15
			insectID = 7,
			trivia = [[Paper wasp can sting human multiple times which contains a powerful venomous punch.]],
			source = [[www.answers.com]],
		},
		--Bug
		{
		--1
			insectID = 8,
			trivia = [[Jewel bug diet consists of plant juices.]],
			source = [[www.wikihow.com]],
		},
		{
		--2
			insectID = 8,
			trivia = [[Jewel bugs are also known as metallic shield bugs.]],
			source = [[www.wikihow.com]],
		},
		{
		--3
			insectID = 8,
			trivia = [[Giant water bug alternate names include toe biter and electric light bug because they attracted to lights.]],
			source = [[www.wikihow.com]],
		},
		{
		--4
			insectID = 8,
			trivia = [[Giant water bug powerful front legs able to grab other bugs and prey as big as small fish frogs and salamanders.]],
			source = [[www.wikihow.com]],
		},
		{
		--5
			insectID = 8,
			trivia = [[Giant water bug can live one year or longer.]],
			source = [[insects.about.com]],
		},
		{
		--6
			insectID = 8,
			trivia = [[Bed bug saliva act as anesthetic and increase blood flow at the bite site.]],
			source = [[insects.about.com]],
		},
		{
		--7
			insectID = 8,
			trivia = [[Bed bugs move to secluded places and hide for five to ten days. During this time they do not feed but instead digest their meal and mate and lay eggs.]],
			source = [[insects.about.com]],
		},
		{
		--8
			insectID = 8,
			trivia = [[Stink bugs cause dermatitis in people when scratched by sharp edges of a stink bugs shell or exoskeleton.]],
			source = [[insects.about.com]],
		},
		{
		--9
			insectID = 8,
			trivia = [[Giant water bug like slowly moving water especially where there is emergent vegetation such as cattails. ]],
			source = [[insects.about.com]],
		},
		{
		--10
			insectID = 8,
			trivia = [[Giant water bug powerful front legs they are able to grab other bugs and prey as big as small fish or frogs and salamanders.]],
			source = [[insects.about.com]],
		},
		{
		--11
			insectID = 8,
			trivia = [[Ladybug may consume as many as five thousand aphids over its lifetime.]],
			source = [[insects.about.com]],
		},
		{
		--12
			insectID = 8,
			trivia = [[Giant water bug can live one year or longer.]],
			source = [[insects.about.com]],
		},
		{
		--13
			insectID = 8,
			trivia = [[Milkweed bugs have a long proboscis to inject salivary enzymes used to digest their food.]],
			source = [[insects.about.com]],
		},
		{
		--14
			insectID = 8,
			trivia = [[Giant water bug like slowly moving water especially there is emergent vegetation such as cattails.]],
			source = [[insects.about.com]],
		},
		{
		--15
			insectID = 8,
			trivia = [[Jewel bugs are related to stink bugs as they can produce smell when they are irritated.]],
			source = [[insects.about.com]],
		},
		--Beetle
		{
		--1
			insectID = 9,
			trivia = [[Tiger beetles are a large group of beetles.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--2
			insectID = 9,
			trivia = [[Tiger beetles are voracious predatory sunloving insects.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--3
			insectID = 9,
			trivia = [[Tiger beetle S shaped larvae are predators which construct vertical burrows in dry soil.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--4
			insectID = 9,
			trivia = [[Tiger beetle are the fastest land insects in the world.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--5
			insectID = 9,
			trivia = [[Tiger beetles have a six weeks life span.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--6
			insectID = 9,
			trivia = [[Tiger beetles running speed of zero point fifty three meters per second.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--7
			insectID = 9,
			trivia = [[Powderpost beetles can damage wooden furniture.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--8
			insectID = 9,
			trivia = [[Powderpost beetles only lay their eggs on bare unfinished wood.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--9
			insectID = 9,
			trivia = [[Anobiid eggs are usually laid on the wood surface.]],
			source = [[www.minibeastwildlife.com]],
		},
		{
		--10
			insectID = 9,
			trivia = [[Anobiids attack both hardwoods and softwoods.]],
			source = [[insects.ucr.edu.com]],
		},
		{
		--11
			insectID = 9,
			trivia = [[Anobiid beetles cause greatest damage to wood with a moisture.]],
			source = [[insects.ucr.edu.com]],
		},
		{
		--12
			insectID = 9,
			trivia = [[Lyctid beetles attack only hardwoods.]],
			source = [[insects.ucr.edu.com]],
		},
		{
		--13
			insectID = 9,
			trivia = [[The female lyctid inserts her eggs within the wood pores.]],
			source = [[insects.ucr.edu.com]],
		},
		{
		--14
			insectID = 9,
			trivia = [[Lyctid beetle is fine when rubbing their fingers.]],
			source = [[insects.ucr.edu.com]],
		},
		{
		--15
			insectID = 9,
			trivia = [[The tiger beetle has a body length of only ten millimeters.]],
			source = [[insects.ucr.edu.com]],
		},
		--Dragonfly
		{
		--1
			insectID = 10,
			trivia = [[Female dragonflies deposit their eggs on the waters surface.]],
			source = [[www.insectidentification.org]],
		},
		{
		--2
			insectID = 10,
			trivia = [[Dragonfly uses about eighty of its brain to process all this visual information.]],
			source = [[www.insectidentification.org]],
		},
		{
		--3
			insectID = 10,
			trivia = [[Dragonfly can eat hundreds of mosquitoes in a single day.]],
			source = [[www.insectidentification.org]],
		},
		{
		--4
			insectID = 10,
			trivia = [[Aerial dragonfly breathes with gills at the end of its abdomen.]],
			source = [[www.insectidentification.org]],
		},
		{
		--5
			insectID = 10,
			trivia = [[Aerial dragon fly has three hundred sixty degree vision.]],
			source = [[www.insectidentification.org]],
		},
		{
		--6
			insectID = 10,
			trivia = [[Male dragonflies exhibit aggression toward other males.]],
			source = [[www.insectidentification.org]],
		},
		{
		--7
			insectID = 10,
			trivia = [[Slenderr skimmer dragonfly fly forward one hundred times per second.]],
			source = [[www.insectidentification.org]],
		},
		{
		--8
			insectID = 10,
			trivia = [[Slenderr skimmer dragonfly hover in the air for almost one minute.]],
			source = [[www.insectidentification.org]],
		},
		{
		--9
			insectID = 10,
			trivia = [[Male slenderr skimmer dragon fly wings longer than the females.]],
			source = [[www.insectidentification.org]],
		},
		{
		--10
			insectID = 10,
			trivia = [[Male slenderr skimmer dragon fly has secondary sex organ.]],
			source = [[www.insectidentification.org]],
		},
		{
		--11
			insectID = 10,
			trivia = [[Blue Dashers dragon fly have a body of standing water with vegetation.]],
			source = [[www.insectidentification.org]],
		},
		{
		--12
			insectID = 10,
			trivia = [[Blue Dashers dragonfly wings can rotate like an airplane propeller.]],
			source = [[www.insectidentification.org]],
		},
		{
		--13
			insectID = 10,
			trivia = [[Females and immature males bluedasher dragonfly have brown thoraxes with yellow stripes and reddish brown eyes.]],
			source = [[www.insectidentification.org]],
		},
		{
		--14
			insectID = 10,
			trivia = [[Male bluedasher dragonfly has black-tipped blue abdomens white faces and metallic green eyes.]],
			source = [[www.insectidentification.org]],
		},
		{
		--15
			insectID = 10,
			trivia = [[Male slenderr skimmer dragonfly has to fold his abdomen and transfer his sperm to his penis.]],
			source = [[www.insectidentification.org]],
		},
		--grasshopper
		{
		--1
			insectID = 11,
			trivia = [[Grasshopper eardrum is on its abdomen]],
			source = [[www.thefreedictionary.com]],
		},
		{
		--2
			insectID = 11,
			trivia = [[Grasshopper have been around for two hundred million years.]],
			source = [[www.thefreedictionary.com]],
		},
		{
		--3
			insectID = 11,
			trivia = [[Grasshoppers can jump a height of about twenty five cm and length of a metre.]],
			source = [[www.thefreedictionary.com]],
		},
		{
		--4
			insectID = 11,
			trivia = [[Grasshopper can survive in different climates and in numerous habitats.]],
			source = [[www.thefreedictionary.com]],
		},
		{
		--5
			insectID = 11,
			trivia = [[Shorthorned grasshoppers feed on the rice foliage at night. ]],
			source = [[www.thefreedictionary.com]],
		},
		{
		--6
			insectID = 11,
			trivia = [[Larger species can grow to five inches in length.]],
			source = [[www.thefreedictionary.com]],
		},
		{
		--7
			insectID = 11,
			trivia = [[Grasshoppers shed their skins as they grow.]],
			source = [[www.insects.org]],
		},
		
		{
		--8
			insectID = 11,
			trivia = [[In Japan grasshoppers are seen as a sign of good luck.]],
			source = [[www.insects.org]],
		},
		{
		--9
			insectID = 11,
			trivia = [[Grasshoppers knee acts as spring and lets it catapult its body into the air.]],
			source = [[www.insects.org]],
		},
		{
		--10
			insectID = 11,
			trivia = [[Katydid grasshoppers make music by stridulating or crepitating.]],
			source = [[www.insects.org]],
		},
		{
		--11
			insectID = 11,
			trivia = [[Grasshoppers are endangered due to habitat loss.]],
			source = [[www.insects.org]],
		},
		{
		--12
			insectID = 11,
			trivia = [[Spur Grasshoppers have ears on their bellies.]],
			source = [[www.insects.org]],
		},
		{
		--13
			insectID = 11,
			trivia = [[Spur Grasshopper detect differences in intensity and rhythm but not pitch.]],
			source = [[www.insects.org]],
		},
		{
		--14
			insectID = 11,
			trivia = [[Grasshoppers shed their skins as they grow.]],
			source = [[www.insects.org]],
		},
		{
		--15
			insectID = 11,
			trivia = [[Shorthorned grasshoppers lay eggs in the soil.]],
			source = [[www.insects.org]],
		},
		--stick insects
		{
		--1
			insectID = 12,
			trivia = [[Jungle Nymph is the heaviest of all stick insects.]],
			source = [[www.insects.org]],
		},
		{
		--2
			insectID = 12,
			trivia = [[Jungle Nymph can live up to two years.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--3
			insectID = 12,
			trivia = [[Jungle nymph considered one of the most beautiful species of stick insect.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--4
			insectID = 12,
			trivia = [[Giant prickly stick insect looks like a cactus than like twig.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--5
			insectID = 12,
			trivia = [[Female jungle nymph change from being beige to being bright green while male never become green.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--6
			insectID = 12,
			trivia = [[Eggs of giant prickly stick insect hatch after four two six months.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--7
			insectID = 12,
			trivia = [[Male leaf insects are smaller and more slender than the females.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--8
			insectID = 12,
			trivia = [[Males leaf insects can fly females cant.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--9
			insectID = 12,
			trivia = [[Leaf insects eggs can take up to two years to hatch.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--10
			insectID = 12,
			trivia = [[Leaf insects and stick insects are phasmids that eat and resemble leaves. ]],
			source = [[www.keepinginsects.com]],
		},
		{
		--11
			insectID = 12,
			trivia = [[Enigma stick insect males have brilliantly colored green-blue head and orange body.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--12
			insectID = 12,
			trivia = [[Enigma stick insect found on Mount Halcon in Mindoro.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--13
			insectID = 12,
			trivia = [[Enigma stick insect not found in trees but in leaf litter on the ground.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--14
			insectID = 12,
			trivia = [[Enigma stick insect draw attention into the problem of rainforest conservation in the Philippines.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--15
			insectID = 12,
			trivia = [[Giant Prickly Stick insect needs enclosure at least three times the length of the animal in height.]],
			source = [[www.keepinginsects.com]],
		},
		--praying mantis
		{
		--1
			insectID = 13,
			trivia = [[Praying mantis has a triangle head.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--2
			insectID = 13,
			trivia = [[Praying mantis has huge compound eyes and chewing mouth parts.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--3
			insectID = 13,
			trivia = [[Females ghost mantis are slightly longer and have wider abdomen and wing case.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--4
			insectID = 13,
			trivia = [[Long lived ghost mantis shedding their skin like other species aprox.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--5
			insectID = 13,
			trivia = [[Ghost mantis size of its prey same as size of its head.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--6
			insectID = 13,
			trivia = [[Orchid mantis species does not live on orchids it does look like a flower or orchid.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--7
			insectID = 13,
			trivia = [[Orchid mantis change color in a matter of days depending on environmental conditions.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--8
			insectID = 13,
			trivia = [[Orchid mantis  lives on flowers and eats flying insects in nature.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--9
			insectID = 13,
			trivia = [[If Female orchid mantis is hungry it eats the male in an instance. ]],
			source = [[www.keepinginsects.com]],
		},
		{
		--10
			insectID = 13,
			trivia = [[Dead leaf mantis has excellent eyesight and can see up to fifty feet away. ]],
			source = [[www.keepinginsects.com]],
		},
		{
		--11
			insectID = 13,
			trivia = [[Dead leaf mantis the only insect can rotate its alien like head almost completely around.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--12
			insectID = 13,
			trivia = [[Dead leaf mantis forelegs have sharp spines used to hunt their prey.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--13
			insectID = 13,
			trivia = [[Adult mantis eat animals much larger than themselves like frogs.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--14
			insectID = 13,
			trivia = [[Giant asian mantis can see movement up to sixty feet away.]],
			source = [[www.keepinginsects.com]],
		},
		{
		--15
			insectID = 13,
			trivia = [[Giant asian mantis bites victims back to paralyze it before eating it. ]],
			source = [[www.keepinginsects.com]],
		},
		--crickets
		{
		--1
			insectID = 14,
			trivia = [[Cave crickets are wingless.]],
			source = [[exoticpets.about.com]],
		},
		{
		--2
			insectID = 14,
			trivia = [[Cave cricket can grow up to two inches and their body is translucent when they are young.]],
			source = [[exoticpets.about.com]],
		},
		{
		--3
			insectID = 14,
			trivia = [[Cave cricket  are omnivorous can eat plant and animal based materials.]],
			source = [[exoticpets.about.com]],
		},
		{
		--4
			insectID = 14,
			trivia = [[Adult mole crickets fly and mate twice a year.]],
			source = [[exoticpets.about.com]],
		},
		{
		--5
			insectID = 14,
			trivia = [[Female house crickets can lay an average of seven hundred twenty eight eggs with the immatures resembling the adults except being wingless.]],
			source = [[exoticpets.about.com]],
		},
		{
		--6
			insectID = 14,
			trivia = [[Crickets have good vision and excellent hearing ability.]],
			source = [[exoticpets.about.com]],
		},
		{
		--7
			insectID = 14,
			trivia = [[Cave cricket commonly found in cool and damp places.]],
			source = [[www.pestproducts.com]],
		},
		{
		--8
			insectID = 14,
			trivia = [[Cave cricket  are omnivorous they will eat plant and animal based materials.]],
			source = [[www.pestproducts.com]],
		},
		{
		--9
			insectID = 14,
			trivia = [[Mole cricket body is brown in colour and covered with fine velvety hairs and forelegs are greatly modified for digging.]],
			source = [[www.pestproducts.com]],
		},
		{
		--10
			insectID = 14,
			trivia = [[Males mole cricket distinguished from the females by the open vein area.]],
			source = [[www.pestproducts.com]],
		},
		{
		--11
			insectID = 14,
			trivia = [[House crickets are prey for many other animals including amphibians or reptiles and birds and spiders.]],
			source = [[www.pestproducts.com]],
		},
		{
		--12
			insectID = 14,
			trivia = [[Camel crickets have different chirping songs for fighting and sounding an alarm or attracting a mate. ]],
			source = [[www.pestproducts.com]],
		},
		{
		--13
			insectID = 14,
			trivia = [[Camel cricket have ridges on their wings that they rub together that act like a comb and file to form an instrument. ]],
			source = [[www.pestproducts.com]],
		},
		{
		--14
			insectID = 14,
			trivia = [[Adults camel cricket dont have wings like other crickets.]],
			source = [[www.pestproducts.com]],
		},
		{
		--15
			insectID = 14,
			trivia = [[Cave cricket can grow up to two inches and their body is translucent when they are young.]],
			source = [[www.pestproducts.com]],
		},
		--centipede
		{
		--1
			insectID = 15,
			trivia = [[Giant Centipede ranges in colour from dark blue green brown to orange yelllow.]],
			source = [[www.imdb.com]],
		},
		{
		--2
			insectID = 15,
			trivia = [[House centipede adult has fifteen pair of legs ]],
			source = [[insects.about.com]],
		},
		{
		--3
			insectID = 15,
			trivia = [[Centipedes dont like dry atmospheres.]],
			source = [[www.imdb.com]],
		},
		{
		--4
			insectID = 15,
			trivia = [[Stone centipede run like water and flowing around obstacles and into holes.]],
			source = [[insects.about.com]],
		},
		{
		--5
			insectID = 15,
			trivia = [[Stone centipede their antennae have disturbingly fluid nature.]],
			source = [[insects.about.com]],
		},
		{
		--6
			insectID = 15,
			trivia = [[Stone centipedes have lots of legs they dont have hundred legs.]],
			source = [[insects.about.com]],
		},
		{
		--7
			insectID = 15,
			trivia = [[Stone centipedes are pretty aggressive predators.]],
			source = [[www.imdb.com]],
		},
		{
		--8
			insectID = 15,
			trivia = [[House centipede adult has 15 pair of legs.]],
			source = [[www.imdb.com]],
		},
		{
		--9
			insectID = 15,
			trivia = [[House centipede hunt prey by leaping upon it or using their back legs.]],
			source = [[insects.about.com]],
		},
		{
		--10
			insectID = 15,
			trivia = [[Giant centipede find itself in grip of a bird and escape by sacrificing few legs.]],
			source = [[insects.about.com]],
		},
		{
		--11
			insectID = 15,
			trivia = [[Giant centipede live in moist environments like under leaf litter or rotting wood. ]],
			source = [[insects.about.com]],
		},
		{
		--12
			insectID = 15,
			trivia = [[Giant centipede have poison glands and means to inject their venom.]],
			source = [[insects.about.com]],
		},
		{
		--13
			insectID = 15,
			trivia = [[Fire centipede are carnivorous creatures that forage for food at night.]],
			source = [[insects.about.com]],
		},
		{
		--14
			insectID = 15,
			trivia = [[Fire centipede live for more than a year and some up to six years.]],
			source = [[insects.about.com]],
		},
		{
		--15
			insectID = 15,
			trivia = [[Fire centipede may bite causing severe pain numbness or discoloration and inflammation.]],
			source = [[insects.about.com]],
		},
		--spider
		{
		--1
			insectID = 16,
			trivia = [[Females red back spider mature after five to six months and may live up to three years but males only live about six months.]],
			source = [[en.wikipedia.org]],
		},
		{
		--2
			insectID = 16,
			trivia = [[House spider deposit approximately two hundred fifty eggs.]],
			source = [[en.wikipedia.org]],
		},
		{
		--3

			insectID = 16,
			trivia = [[Jumping spider lives on average for between two and three years.]],
			source = [[en.wikipedia.org]],
		},
		{
		--4
			insectID = 16,
			trivia = [[Crab spiders produce eggs within a few weeks after mating.]],
			source = [[en.wikipedia.org]],
		},
		{
		--5
			insectID = 16,
			trivia = [[All spiders have eight legs and they are arthropods.]],
			source = [[en.wikipedia.org]],
		},
		{
		--6
			insectID = 16,
			trivia = [[Spider silk is incredibly strong and flexible.]],
			source = [[en.wikipedia.org]],
		},
		{
		--7
			insectID = 16,
			trivia = [[Male spiders identify themselves by variety of complex courtship rituals.]],
			source = [[en.wikipedia.org]],
		},
		{
		--8
			insectID = 16,
			trivia = [[Spiders occur in a large range of sizes.]],
			source = [[en.wikipedia.org]],
		},
		{
		--9
			insectID = 16,
			trivia = [[Spiders are predators that eat various other arthropods.]],
			source = [[en.wikipedia.org]],
		},
		{
		--10
			insectID = 16,
			trivia = [[Spider bite may cause pain but in most cases and venom is harmless.]],
			source = [[en.wikipedia.org]],
		},
		{
		--11
			insectID = 16,
			trivia = [[Females redback spider have a body length of ten mm while is three to four mm.]],
			source = [[en.wikipedia.org]],
		},
		{
		--12
			insectID = 16,
			trivia = [[Females redback spiderlives in a warm sheltered location.]],
			source = [[en.wikipedia.org]],
		},
		{
		--13
			insectID = 16,
			trivia = [[Crab spiders are no active hunters.]],
			source = [[en.wikipedia.org]],
		},
		{
		--14
			insectID = 16,
			trivia = [[Crab spiders more use of camouflage techniques than other spiders.]],
			source = [[en.wikipedia.org]],
		},
		{
		--15
			insectID = 16,
			trivia = [[Crab spiders do not make a web but catch their prey with their front legs.]],
			source = [[en.wikipedia.org]],
		},
		
--end it here

	}

return M