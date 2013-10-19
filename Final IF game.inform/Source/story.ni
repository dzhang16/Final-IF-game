"Escape the Movie" by Dylan Zhang

[Code to display a player's location in the game and possible exits in the header.]
When play begins:
	now left hand status line is "Exits: [exit list]";
	now right hand status line is "[location]".
	
To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way] ".
		
Use serial comma.

When play begins: say "You go out with your friends to watch the latest horror movie called ‘Madman Mercer.’  In the movie you see Madman Mercer chasing people through Chinatown in the middle of the night with a machete.  As you are watching you suddenly fall asleep.  When you wake up you are on the cold damp ground of Chinatown.  You can hear the high speed swings of a machete.  In your mind you think ‘Oh no’. ".

[Disable take all from tonic]
Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "Think again big boy." instead
	
use no scoring. 

[Rooms]
Cultural Plaza is a room.  The description is "The center of this nice little mall with stores surrounding you, and bushes decorating the outside.  It is outdoors and deserted.  No one is sitting on the benches like they usually do.[line break]  [line break]There is a nice little directory here too, showing all the stores."

directory is scenery in the cultural plaza.  The description of the directory is "Exits:[line break]
north: stage[line break]
northeast: furniture store[line break]
northwest: hair salon[line break]
west: fruit store[line break]
east: video store[line break]
south: fish market[line break]
southeast: bathroom[line break]
southwest: convenience store.".

[scenery]
The benches are scenery in the Cultural Plaza.  The description is "Old wooden benches that have become smooth from being sat on so much."

The bushes are scenery in the Cultural Plaza.  The description is "Nicely cut rectangular, green bushes."

The stores are scenery in the Cultural Plaza.  The description is "You look to the north and see the great, big stage.  You look northwest and see a nice little hair salon.  You look to the west and see a nice place to eat dim-sum.  You look southwest and see a convenience store.   You look northeast and see a furniture store.  You look east and see a rental video store.  You look southeast and see the bathrooms."

Stage is a room. It is north of the Cultural Plaza.  The description is "A large stage used for lion dance shows, Kung Fu performance, and many other performances or events.  There is a red door leading to the backstage.  The exit to Cultural Plaza is to the south.".
[scenery]
[The curtains is a fixed in place thing.  The curtain is in the stage.  The description is "A big red curtain that spanning about 40 feet wide and 20 feet tall."]
the red door is a door.  The red door is lockable and locked.  The red key unlocks the red door.  The red door is south of the Backstage and north of the stage.  The description of the red door is "A red door that is red because that is the lucky chinese color."

the red key is a thing.  The red key is in the video store.  The description of the red key is "A brass key that was painted red, so that people knew what kind of door it unlocked.".

[Restaurant is a room.  It is west of the Cultural Plaza.  The description is "A nice little Chinese restaurant where you can smell all of their famous Char-Siu buns.  There are about 20 tables and 4 chairs to each table.  You also see a pretty decent size aquarium where they keep their fresh lobster, crabs, and fish."
[scenery]
The tables are scenery in the restaurant.  The description is "20 wooden tables that have a white cloth covering the whole table.  Each table has their own set of condiments including soy sauce, hot sauce, salt, pepper, and red vinegar."

The soy sauce is scenery in the restaurant.  The description is "A small bottle of kikkoman's soy sauce."

The hot sauce is scenery in the restaurant.  The description is "A big bottle of shiracha hot sauce".

The salt is scenery in the restaurant.  The description is "A nice little salt shaker."

The pepper is scenery in the restaurant.  The description is "A nice little pepper shaker."

The red vinegar is scenery in the restaurant.  The description is "A squeeze bottle filled with red vinegar used to eat the dragon dumplings.  You start drooling just thinking about the awesome combinations of the vinegar and dumplings."]


Video Store is a room.  It is east of the Cultural Plaza.  The description is "A rental video shop, with stands and stands of videos.  The exit to Cultural Plaza is to the west.".
[scenery]


Hair Salon is a room.  It is northwest of the Cultural Plaza.  The description is "A hair salon with little pieces of hair on the floor everywhere.  You see a beautiful safe.  The exit to Cultural Plaza is to the southeast.".
[scenery]
pieces of hair is scenery in the hair salon.  The description of the pieces of hair is "many different colors of cut hair litter the floor.".

Furniture Store is a room.  It is northeast of the Cultural Plaza.  The description is "Lots of furniture clutter the store.  The exit to Cultural Plaza is to the southwest.".
[items in the store]
the couch is a thing.  The couch is in the furniture store.  The description of the couch is "A nice big light brown leather couch.  Lots of people come and sit on it everday, and maybe you can search the couch to see if anything fell out of their pockets in between the couch cushions".

after examining couch for the first time:
	now description of the couch is "A nice big light brown leather couch.".

Instead of taking the couch:
	say "It is too big and heavy for you to carry.".

Instead of searching the couch:
	say "You search the gaps in the couch cushions. [line break]You find a wrinkled paper.";
	move wrinkled paper to player.

Convenience Store is a dark room.  It is southwest of the Cultural Plaza.  The description is "A small family run convenience store filled with racks of snack, and a fridge of drinks.  The exit to Cultural Plaza is to the northeast.".
[scenery]
racks of snacks is a thing in the convenience store.  The description of the racks of snacks is "chips on one level, candy on another, so many awesome snacks.".

fridge is scenery in the convenience store.  The description of the fridge is "A rectangular box with a see through door, in which you can see many different assortment of drinks.".

Bathroom is a room.  It is southeast of the Cultural Plaza.  The description of the bathroom is "A stinky smelling bathroom.  Urinals lining the wall and unflushed toilets fill the bathroom.  The exit to Cultural Plaza is to the northwest.".
[scenery]
urinal is scenery in the bathroom.  The description of the urinal is "An unflushed urinal that has some pubic hair lining the edge.".

urinals is scenery in the bathroom.  The description of the urinals is "A place where men pee in.".

[Downtown is a room.  It is south of the Cultural Plaza.  The description is "A street lighted with street light."]

Fish Market is a room.  It is south of the Cultural Plaza.  The description is "Fishy smelling market where you can hear the clueless chinese fisherman who is unaware of Madman Mercer, yelling in his accent ‘Come get yo ninety nine sense fish.  Veeery cheap fish.’.  The exit to Cultural Plaza is to the north.".
[scenery]
instead of talking to fisherman:
	say "what are you doing in this movie?  You are not a character of this movie.  Go back to where you came from by building a film projector, and the rest is up to you."
	
cheap fish is scenery in the Fish Market.  The description of the cheap fish is "A tiny looking little things.  Grey in color, and you almost felt sorry for the fish.".

Fruit store is a room.  It is west of the Cultural Plaza.  The description is "Many different baskets of fruit fill the store.  The exit to Cultural Plaza is to the east.".
[scenery]
[pears is scenery in the fruit store.  The description of the pears is "green snowman shaped fruits.".
apples is scenery in the fruit store.  The description of the apples is "many red molar tooth shaped fruits.".
peaches is scenery in the fruit store.  The description of the peaches is "many fuzzy pinkish violet, spherical fruits.".]

[items in the game]

green basket is a thing in the fruit store.  green basket is fixed in place.  green basket is an open openable container.  The description of the green basket is "many green pears fill the basket.".

pears is a thing.  The pears is in the green basket.  The description of the pears is "nice green, snowman shaped pears.".

pink basket is a thing in the fruit store.  pink basket is fixed in place.  pink basket is an open openable container.  The description of the pink basket is "many fuzzy peaches fill the basket.".

peaches is a thing.  The peaches is in the pink basket.  The description of the peaches is "Very fuzzy, pinkish violet, spherical peaches.".

Flashlight is a thing.  Flashlight is lit.  The description of the flashlight is "A device used to light up dark rooms.".

Apples is a thing.  The Apples is in the red basket.  The description of the apples is "Big, nice, juicy, red apples.".

red basket is thing.  red basket is in the fruit store.  red basket is fixed in place.  red basket is an open openable container.  The description of the red basket is "A basket containing many apples, and you see a light emitting from under the apples, which are covering the strange object.".

Film Footage is a thing.  The description is "a wheel of film that is for film projectors that is titled ‘Movie Theater.  Maybe you should play the film footage when you get the projector.’".

The worn out book is a thing in the Cultural Plaza.  The description is "It seems like Madman Mercer dropped this book.  The cover says DO NOT READ: Property of Madman Mercer.[line break]Maybe you should try opening the book and reading it.".

Instead of opening book:
	say "You open the book. [line break] [line break]The first page says:[line break]
My Plan:[line break]
-Find the magical Film that opens up a dimensional gate to reality[line break]
-Escape the horror movie[line break]
-Proceed to kill everyone in the real world[line break]
-Build Film Projector to play film [line break]
-Find the papers that contain the combination of numbers to get the film [line break] [line break] The rest of the pages are Madman Mercer writing about how his life sucks.[line break][line break]Maybe you should find the pages and build to projector to escape back to your world"

[ripped papers]
small paper is a thing.  The description of the small ripped paper is "You see the number 1, and 3 other illegible numbers".
scrap of paper is a thing.  The description of the scrap of paper is "いちいYou see the numberいs 1 and 3, and 2 other illegible numbers next to it".
wrinkled paper is a thing.  The description of the wrinkled paper is "You see the numbers 8 and 4, and 2 other illegible numbers" .
beat up paper is a thing.  The description of the beat up paper is "You see the number 4, and 3 other illegible numbers".
dirty paper is a thing.  The description of the dirty ripped paper is "There are numbers on other pieces of paper that represent the correct number to spin a dial to, to unlock something, but you also need to know the order.".
soggy paper is a thing.  The description of the soggy paper is "The order of the number combination is A  C  H  D, you think about the alphabet.".

[10 film projector parts]
[1][Light Source is a thing in the hair salon.  ]
[2]Reflector is a thing in the Fish Market.  The description of the Reflector is "A light reflecting mirror.  It seems to be a part of some kind of machine."

[3]Condenser Lens is a thing in the convenience store.  The description of the Condenser Lens is "You recognize the lens as a part of a projector."

[4]Imaging Lens is a thing in the Bathroom.  The description of the Imaging Lens is "You recognize the lens as the part projector of a projector that produces images."

[5]shutter is a thing in the furniture store.  The description of the Shutter is "You recognize the shutter as a shutter from one of those projectors you saw at the movie theater."

[6]Viewing Screen is a thing in the video store.  The description of the Viewing Screen is "A big screen used to project movies on."

The Instruction Manual is an object. The Instruction Manual is in the cultural plaza. The description of the Instruction Manual is "How to Build a Film Projector for Dummies:

Steps: 

*note: must combine in this order 

1. Combine flashlight with Reflector

2. Combine flashlight Reflector Thing with Condenser Lens

3. Combine flashlight Reflector Condenser Lens Thing with Imaging Lens

4. Combine flashlight Reflector Condenser Lens Imaging Lens Thing with Shutter

5. Combine flashlight Reflector Condenser Lens Imaging Lens Shutter Thing with Viewing Screen

6. After combining you should have a Film Projector

7. Find Film"



[Understand Statements]
Understand "read [something]" as examining.
Understand "read [something]" as opening.
[Understand "curtains" as curtain.]

[instead statements]

instead of taking flashlight:
	say "taken";
	move flashlight to player.
	
[Instead of eating char-siu bau:
	say "you start eating the char-siu bau, and suddenly you bite something hard.  You see that it is a wooden key.";
	move wooden key to player.;
	remove char-siu bau from play.]
	
Instead of attacking Madman Mercer:
	say "Madman Mercer is unphased by your weak punch, and BOOM counters with a nice little uppercut knocking you down.  You lose conciousness as you see Madman Mercer walking toward you.";
	end the game in death.
	
Instead of opening beautiful safe:
	say "you see a small paper.";
	move small paper to hair salon.;
	move dirty paper to hair salon.
	
[Instead of opening green safe:
	say "you see a paint splattered ripped paper.";
	move paint splattered ripped paper to green safe.]
	
Instead of opening fancy safe:
	say "you see a beat up paper.";
	move beat up paper to fancy safe.
	
[Instead of opening wooden safe:
	say "you see a dirty ripped paper.";
	move dirty ripped paper to wooden safe.]
	
	
Instead of talking to the Store Clerk for the first time:
	say "Man I'm tired, and could really use some lihing mui apples right now, but this convenience store doesn't have any fresh apples."
	
Instead of giving apples to the Store Clerk:
	say "Thanks man you are a life saver.  Here is something as a reward.[line break]You receive a scrap of paper";
	move scrap of paper to player.;
	remove apples from play.
	
[Instead of opening curtain:
	say "The curtains are too big and made out of a heavy material.  You can even budge it without the help of the motors to pull it back, but you need to turn the motors on somehow."]
	
instead of peeing urinal:
	say "You don't feel the urge to pee right now."
	
instead of taking apples for the first time:
	say "you take the apples and revealed a flashlight.";
	move apples to player;
	move flashlight to fruit store.
	
instead of examining the player:
	say "You are a boy named Dominuse, who is asian.  You are wearing shorts and a t-shirt.  You are a pretty tick guy."
	
instead of talking to Madman Mercer for the first time:
	say "I wouldn't do that if I were you, he might rage so hard on you and kill you."
	
Instead of talking to Madman Mercer:
	say "Madman Mercer says, ‘SHUT UP!’ and swings his machete at you, taking you out.’";
	end the game in death.

instead of taking green basket:
	say "Shoplifting is illegal.".
	
instead of taking pink basket:
	say "Shoplifting is illegal.".
	
instead of taking red basket:
	say "Shoplifting is illegal.".
	
instead of attacking madman mercer for the first time:
	say "No one is stopping, but I wouldn't try to kill him because he is armed and dangerous.".
	
Instead of going west for the first time:
	move player to the fruit store;
	say "The red basket catches your attention.".

Instead of going southwest for the first time:
	say "try find a flashlight first.".

[Instead of opening wad of hair:
	say "you cut the wad of hair open";
	move]
	
[Instead of taking soy sauce:
	say "You don't have time for that.  Madman Mercer might come any minute now."
	
Instead of taking hot sauce:
	say "You don't have time for that.  Madman Mercer might come any minute now."
	
Instead of taking salt:
	say "You don't have time for that.  Madman Mercer might come any minute now."
	
Instead of taking pepper:
	say "You don't have time for that.  Madman Mercer might come any minute now."
	
Instead of taking red vinegar:
	say "You don't have time for that.  Madman Mercer might come any minute now."]
	

[after staments]

after taking flashlight:
	now description of the red basket is "A basket of apples.".
	

	

[safes]

the beautiful safe is scenery in the Hair Salon.  It is a closed openable container.  It is locked and lockable.  stinky key unlocks the beautiful safe.  The description of the beautiful safe is "A beautiful safe that has a keyhole that look like a beautifully crafted key goes in."

[the green safe is scenery in the convenience store.  It is a closed openable container.  It is locked and lockable.  green key unlocks the green safe.  The description of the green safe is "A green safe that is very green."]

the fancy safe is scenery in the stage.  It is a closed openable container.  It is locked and lockable.  fancy key unlocks the fancy safe.  The description of the fancy safe is "a very fancy and expensive looking safe.  I would rather steal the safe than what's inside."

[the wooden safe is scenery in the video store.  It is a closed openable container.  It is locked and lockable.  wooden key unlocks the wooden safe.  The description of the wooden safe is "a wooden safe crafted very well from wood."]


[keys]

the stinky key is a thing.  stinky key unlocks the beautiful safe.  The description of the stinky key is "a stinky key that is stinky beacuse of the poop, but is a beautifully crafted key that unlocks beautiful things."

[the green key is a thing in the furniture store.  green key unlocks the green safe.  The description of the green key is "a green key that looks like it unlocks green things."]

the fancy key is a thing in the stage.  fancy key unlocks the fancy safe.  The description of the fancy key is "an expensive looking key that looks like it unlocks expensive things."


[other keys]

[the pair of scissors is a thing.  The Pair of Scissors is in the hair salon.  The pair of scissors unlocks the wad of hair.  the description of the pair of scissors is "very sharp scissors able to cut through even the strongest hairs."]


[hiding places for the key]

[smelly key hiding place]
[the wad of hair is a thing in the hair salon.  It is a closed openable container.  It is locked and lockable.  The pair of scissors unlocks the wad of hair.  The description of the wad of hair is "A wad of hair leftover from someone's haircut."]

[toilet puzzle]
the toilet is a fixed in place thing.  The toilet is in the bathroom.  it is a open openable container.  The description of the toilet is "A dirty looking toilet which people do not flush after using.".

instead of taking poop:
	say "Poop is not solid enoguh and the brown goo slips through your hands."

poop is a thing in the toilet.  The description of poop is "smelly brown substance.  I wouldn't take that if I were you."

After going to the bathroom for the first time:
	move player to the bathroom.;
	say "you have the urge to POOP"
	
After pooping toilet for the first time:
	say "Plop! brown things come from your butt into the toilet.  I recommend you flush it before it stinks up the place.";
	now description of the toilet is "A toilet filled with an explosion of poop."
	
After flushing toilet for the first time:
	say "the toilet clogs and a soggy paper and stinky key appears!";
	move soggy paper to toilet.;
	move stinky key to toilet.
	
	

[Madman Mercer]
Madman Mercer is a male man.  Madman mercer is in the hair salon .  The description of Madman Mercer is "A white guy about 5 foot 7 inches with curly brown hair wearing a hockey mask.  He is holding a machete."

[Mr.Kiang's get the cat code: Madman Mercer]
[Every turn:
	if Madman Mercer is not visible begin;
			move Madman Mercer to the location of the player;
			say "Madman Mercer is running wildly at you, swinging his machete, and cursing at you.";
	end if.]
	
Every turn: if Madman Mercer is in a room (called the current space) begin;
let next space be a random room;
if Madman Mercer is visible, say "Madman Mercer looks into your soul with his blood shot eyes running at you.  I wouldn't be in his line of sight for too long if i were you.".;
move Madman Mercer to next space; 
end if.

every turn rule:
	if Madman Mercer is not visible, say "You are safe from Madman Mercer for now.".
	
every turn rule:
	if Madman Mercer is visible, say "Madman Mercer looks into your soul with his blood shot eyes running at you.  I wouldn't be in his line of sight for too long if i were you.".


Every turn:
	if Madman Mercer is visible for 7 turns, end the game in death [make it so that it is 3 turns in a row]
	

[Every turn:
	if Madman Mercer and player are in the current space for 3 turns, end the game in death.]




[The combining action from TONIC]
Understand "combine [something] with [something]" as combining it with.
Combining it with is an action applying to two things.

[The line below tells Inform7 that combining produces something.]
The combining it with action has an object called the Contraption.

Setting action variables for combining something with something: 
	let X be a list of objects;
	add the noun to X;
	add the second noun to X;
	sort X; 
	repeat through the Table of Projector Parts: 
		let Y be the parts list entry; 
		sort Y; 
		if X is Y: 
			now the Contraption is the results entry.

[if there is no match for the combination of things, there is no result for the combining, so STOP the action]
Check combining it with:
	if Contraption is nothing:
		say "You can't combine [the noun] and [the second noun] into anything useful.[line break]Try another combination of things.";
		stop the action.

[If action is not stopped, continue to…]
Carry out combining it with: 
	say "You fuse together [the noun] and [the second noun].";
	remove the noun from play;
	remove the second noun from play;
	move the Contraption to the player.

Report combining it with:
	say "You now have a [a Contraption]."


Table of Projector Parts
Parts List	Results
{flashlight, Reflector}	flashlight Reflector Thing
{flashlight Reflector Thing, Condenser Lens}	flashlight Reflector Condenser Lens Thing
{flashlight Reflector Condenser Lens Thing, Imaging Lens}	flashlight Reflector Condenser Lens Imaging Lens Thing
{flashlight Reflector Condenser Lens Imaging Lens Thing, Shutter}	flashlight Reflector Condenser Lens Imaging Lens Shutter Thing
{flashlight Reflector Condenser Lens Imaging Lens Shutter Thing, Viewing Screen}	Film Projector
[{light source, reflector}	Light Reflecting Thingy[1+1]
{light source, condenser lens}	Light Condenser Thingy[1+1]
{light source, Shutter}	Light Shutter Thingy[1+1]
{light source, Imaging Lens}	Light Imaging Lens Thingy[1+1]
{light source, Viewing Screen}	Light Viewing Screen Thingy[1+1]
{Light Reflecting Thingy, condenser lens}	Light Reflecting Condenser [2+1]
{Light Reflecting Thingy, Shutter}	Light Reflecting Shutter[2+1]
{Light Reflecting Thingy, Imaging Lens}	Light Reflecting + Imaging Lens Thing [2+1]
{Light Reflecting Thingy, Viewing Screen}	Light Reflecting Viewing Screen [2+1]
{Light Condenser Thingy, reflector}	Light Condenser Reflector [2+1]
{Light Condenser Thingy, Shutter}	Light condenser Shutter [2+1]
{Light Condenser Thingy, Imaging Lens}	Light Condenser + Imaging Lens Thing [2+1]
{Light Condenser Thingy, Viewing Screen}	Light Condenser + Viewing Screen Thing [2+1]
{Light Shutter Thingy, reflector}	Light Shutter + reflector [2+1]
{Light Shutter Thingy, condenser lens}	Light Shutter + condenser lens [2+1]
{reflector, condenser lense}	Reflector condenser lens Thingy[1+1]
{reflector, Shutter}	Reflector Shutter Thingy[1+1]
{reflector, Imaging Lens}	Reflector Imaging Lens Thingy[1+1]
{reflector, Viewing Screen}	Reflector Viewing Screen Thingy[1+1]
{condenser lense, shutter}	Condensing Shutter Lens Thingy[1+1]
{condenser lense, Imaging Lens}	Condensing Imaging Lens Thingy[1+1]
{condenser lense, Viewing Screen}	Condensing Viewing Screen Thingy[1+1]
{Imaging Lens, Shutter}	Imaging Shutter Lens Thingy[1+1]
{Imaging Lens, Viewing Screen}	Imaging Viewing Screen Thingy[1+1]
{Shutter, Viewing Screen}	Viewing Shutter Screen Thingy[1+1]]

[1+1]
[Light Reflecting Thingy is an object.
Light Condenser Thingy is an object.
Light Shutter Thingy is an object.
Light Imaging Lens Thingy is an object.
Light Viewing Screen Thingy is an object.  
Reflector condenser lens Thingy is an object.
Reflector Shutter Thingy is an object.
Reflector Imaging Lens Thingy is an object.
Reflector Viewing Screen Thingy is an object. 
Condensing Shutter Lens Thingy is an object.
Condensing Imaging Lens Thingy is an object.
Condensing Viewing Screen Thingy is an object.
Imaging Shutter Lens Thingy is an object.
Imaging Viewing Screen Thingy is an object.
Viewing Shutter Screen Thingy is an object.]

[2+1]
[Light reflecting condenser is an object.
Light reflecting shutter is an object.
Light reflecting + Imaging Lens Thing is an object.
Light reflecting viewing screen is an object.
Light condenser reflector is an object.
Light condenser shutter is an object.
Light Condenser + Imaging Lens Thing
Light Condenser + Viewing Screen Thing]

[combined objects]

[1]flashlight Reflector Thing is an object.  flashlight Reflector Thing is lit.  The description of the flashlight reflector thing is "A Flashlight + a Reflector."

[2]flashlight Reflector Condenser Lens Thing is an object.  flashlight Reflector Condenser Lens Thing is lit.  The description of the flashlight reflector condenser lens thing is "A Flashlight + a Reflector + a Condenser lens."

[3]flashlight Reflector Condenser Lens Imaging Lens Thing is an object.  flashlight Reflector Condenser Lens Imaging Lens Thing is lit.  flashlight Reflector Condenser Lens Imaging Lens Thing is lit.  The description of the flashlight reflector condenser lens imaging lens thing is "A Flashlight + a Reflector + a Condenser Lens + a Imaging lens.".

[4]flashlight Reflector Condenser Lens Imaging Lens Shutter Thing is an object.  flashlight Reflector Condenser Lens Imaging Lens Shutter Thing is lit.  The description of the flashlight reflector condenser lens imaging lens shutter thing is "A Flashlight + a Reflector + a Condenser Lens + a Imaging Lens + a Shutter."

[5]Film Projector is an object.  The description of the Film Projector is "a make-shift Film Projector that you made hastily.  Hopefully it can still play film though."

Instead of playing film:
	say "you put the film into the projector and you start the projector up.  It starts playing a movie of the movie theater that your friends are at.  You start feeling drowsy and you fall unconcious.  You wake up at the movie theater next to your friends.  You ask them about your absence.  They tell you that you were sleeping the whole time.  Maybe it was all a dream?";
	end the game in victory.

[secret door]
[Include Secret Doors by Andrew Owen.
The Small Windowless Room is a room. "It smells dusty in here, as if the secret door hasn't been
opened in ages."
The oak door is north of the stage and south of the Small Windowless Room. The oak door is
a secret door. 
The oak wall paneling is scenery in the stage. The description is "Richly carved oak paneling
covers the north wall[if the oak door is open]. One of the panels has been opened; it’s actually a
door[otherwise if the oak door is revealed]. One of the panels has an unusually wide seam around
it[end if]." Understand "carved" and "panel" as the paneling.
After examining the oak wall paneling for the first time:
now the oak door is revealed;
say "One of the panels has an unusually wide seam around it. On closer inspection, the panel
57proves to be a door!"]


[code for a combo lock]
The Backstage is a room.  It is north of the red door.  The description of the backstage is "A strange room that you wouldn't have guessed to be behind the stage of Cultual Plaza.  The room surrounds you with metal walls and a very bright light, like the ones they use in surgeries hanging from the ceiling.".  The metal box is here. "A metal box the size of an Xbox 360, that has a dial which can spin to any combination of numbers.  It looks very solid, so I wouldn't waste your energy on trying force it open." 

Instead of opening the metal box, say "The box opens only when dial is spinned to the correct number."

In the metal box is film. The metal box is closed and fixed in place. Understand "dial" as the metal box.

Spinning it to is an action applying to one thing and one number. Check spinning it to: if the noun is not the metal box, say "[The noun] does not spin." instead. Report spinning it to: say "Click! and nothing else happens."

Understand "spin [something] to [a number]" as spinning it to.

After spinning the closed metal box to 1384: now the metal box is open; say "Clonk! and the metal door swings slowly open, revealing [a list of things in the metal box]."


[definitions]
Pooping is an action applying to one thing.  Understand "poop in [something]" as pooping.
Flushing is an action applying to one thing.  Understand "flush [something]" as flushing.
Talking to is an action applying to one visible thing.  Understand "talk to [someone]"or "converse with [someone]" as talking to.
peeing is an action applying to one thing.  Understand "pee in [something]" as peeing.
[searching is an action applying to one thing.  Understand "search [something]" as searching.]
Understand "look in [something]" as searching.
Playing is an action applying to one thing.  Understand "play [something]" as playing.
Understand "cut [something]" as cutting.
Check talking to: say "[The noun] doesn't reply."
Understand "apple" as apples.

[NPC]
The Store Clerk is a man in the convenience store.  The description is "A a very scruffy, sleepy looking man wearing a green sweater vest with jeans on."

The chinese fisherman is a man in the fish market.  The description is "A fishy smelling man with an apron on holding fishes in both hands."


[get that cat random chance]
Every turn when a random chance of 1 in 9 succeeds:
	Say "You hear the speedy swings of the machete cutting the air.";
	if a random chance of 1 in 2 succeeds:
		say "You can hear the loud heavy footsteps from the Madman Mercer.  I would recommend not staying too long in this room."








