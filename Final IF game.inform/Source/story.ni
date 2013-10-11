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

When play begins: say "You go out with your friends to watch the latest horror movie called ‘Madman Mercer.’  In the movie you see Madman Mercer chasing people through Chinatown in the middle of the night with a machete.  As you are watching you suddenly fall asleep.  When you wake up you are on the cold damp ground of Chinatown.  You can hear the high speed swings of a machete.  In your mind you think ‘Oh no’. "

[Disable take all from tonic]
Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "Hey maybe you should actually TRY and play the game, you little cheater. K, thanks." instead
	
use no scoring. 

[Rooms]
Cultural Plaza is a room.  The description is "The outside of all the stores around you."

Stage is a room. It is north of the Cultural Plaza.  The description is "A large stage used for lion dance shows, and many other performances." 

Restaurant is a room.  It is west of the Cultural Plaza.  The description is "A nice little Chinese restaurant where you can smell all of the Char-Siu Buns."

Video Store is a room.  It is east of the Cultural Plaza.  The description is "A rental video shop, with stands and stands of videos."

Hair Salon is a room.  It is northwest of the Cultural Plaza.  The description is "A hair salon with little pieces of hair on the floor everywhere."

Furniture Store is a room.  It is northeast of the Cultural Plaza.  The description is "Lots of furniture clutter the store."

Convenience Store is a dark room.  It is southwest of the Cultural Plaza.  The description is "There are many snack sold here."

Bathroom is a room.  It is southeast of the Cultural Plaza.  The description is "A stinky smelling bathroom."

Downtown is a room.  It is south of the Cultural Plaza.  The description is "A street lighted with street light."

Fish Market is a room.  It is west of the Downtown.  The description is "Fishy smelling market where you can hear the loud clerk yelling ‘Come get yo ninety nine sense feesh’."

Fruit Stands is a room.  It is east of the Downtown.  The description is "Many different containers of fruit are on the stands."


[items in the game]

Flashlight is a thing.  Flashlight is lit.  The flashlight is in the basket of fruit.  The description is "A device used to light up dark rooms."

Apple is a thing.  The apple is in the basket of fruit.  The description is "a big, nice, juicy, red apple."

basket of fruit is an open openable container in the fruit stands.  The description is "A glowing basket containing many glowing apples."

Film is a thing.  The description is "a wheel of film that is for film projectors that is titled ‘Movie Theater’"

[ripped papers]
small ripped paper is a thing.  The description of the small ripped paper is "A  C  H  D".
cold ripped paper is a thing.  The description of the cold ripped paper is "いちいいichi  san  hachi  yon".
paint splattered ripped paper is a thing.  The description of the paint splattered ripped paper is "hint".
perfume scented ripped paper is a thing.  The description of the perfume scented ripped paper is "hint".
dirty ripped paper is a thing.  The description of the dirty ripped paper is "hint".
soggy scrap of paper is a thing.  The description of the soggy scrap of paper is "hint".

[10 film projector parts]
[1][Light Source is a thing in the hair salon.  ]
[2]Reflector is a thing in the restaurant.
[3]Condenser Lens is a thing in the convenience store.
[4]Imaging Lens is a thing in the Bathroom.
[5]shutter is a thing in the furniture store.
[6]Viewing Screen is a thing in the video store. 

The Instruction Manual is an object. The Instruction Manual is in the Downtown. The description of the Instruction Manual is "How to Build a Film Projector for Dummies:

Steps: 

*note: must combine in this order 

1. Combine flashlight with Reflector

2. Combine flashlight + Reflector Thing with Condenser Lens

3. Combine flashlight + Reflector + Condenser Lens Thing with Imaging Lens

4. Combine flashlight + Reflector + Condenser Lens + Imaging Lens Thing with Shutter

5. Combine flashlight + Reflector + Condenser Lens + Imaging Lens + Shutter Thing with Viewing Screen

6. After combining you should have a Film Projector

7. Find Film"



[Understand Statements]
Understand "read [something]" as examining.

[instead statements]

instead of taking flashlight:
	say "taken";
	move flashlight to player.
	
Instead of eating char-siu bau:
	say "you start eating the char-siu bau, and suddenly you bite something hard.  You see that it is a wooden key.";
	move wooden key to player.;
	remove char-siu bau from play.
	
Instead of attacking Madman Mercer:
	say "Madman Mercer is unphased by your weak punch, and BOOM counters with a nice little uppercut knocking you down.  You lose conciousness as you see Madman Mercer walking toward you.";
	end the game in death.
	
Instead of opening beautiful safe:
	say "you see a small ripped paper.";
	move small ripped paper to beautiful safe.
	
Instead of opening green safe:
	say "you see a paint splattered ripped paper.";
	move paint splattered ripped paper to green safe.
	
Instead of opening fancy safe:
	say "you see a perfume scented ripped paper.";
	move perfume scented ripped paper to fancy safe.
	
Instead of opening wooden safe:
	say "you see a dirty ripped paper.";
	move dirty ripped paper to wooden safe.
	
	
Instead of talking to the Store Clerk for the first time:
	say "Man I'm tired, and could really use some lihing mui apples right now, but this convenience store doesn't have fresh apples."
	
Instead of giving apple to the Store Clerk:
	say "Thanks man you are a life saver.  Here is something as a reward.[line break]You receive a piece of cold ripped paper";
	move cold ripped paper to player.
	
	
[after staments]

after taking flashlight:
	now description of the basket of fruit is "A basket of apples.".
	

[safes]

the beautiful safe is scenery in the Hair Salon.  It is a closed openable container.  It is locked and lockable.  beautiful key unlocks the beautiful safe.  The description of the beautiful safe is "A beautiful safe that has a keyhole that look like a beautiful key goes in."

the green safe is scenery in the convenience store.  It is a closed openable container.  It is locked and lockable.  green key unlocks the green safe.  The description of the green safe is "A green safe that is very green."

the fancy safe is scenery in the stage.  It is a closed openable container.  It is locked and lockable.  fancy key unlocks the fancy safe.  The description of the fancy safe is "a very fancy and expensive looking safe.  I would rather steal the safe than what's inside."

the wooden safe is scenery in the video store.  It is a closed openable container.  It is locked and lockable.  wooden key unlocks the wooden safe.  The description of the wooden safe is "a wooden safe crafted very well from wood."

the smelly safe is scenery in the bathroom.  It is a closed openable container.  It is locked and lockable.  smelly key unlocks the smelly safe.  The description of the smelly safe is "a safe stained with the smell of poop and pee."

[keys]

the beautiful key is a thing in the bathroom.  beautiful key unlocks the beautiful safe.  The description of the beautiful key is "a beautiful key that unlocks beautiful things."

the green key is a thing in the furniture store.  green key unlocks the green safe.  The description of the green key is "a green key that looks like it unlocks green things."

the fancy key is a thing in the stage.  fancy key unlocks the fancy safe.  The description of the fancy key is "an expensive looking key that looks like it unlocks expensive things."

the wooden key is a thing.  Wooden key is in the char-siu bau.  wooden key unlocks the wooden safe.  The description of the wooden key is "a well crafted wooden key to unlock wooden things."

[other keys]

the scissor is a thing.  Scissor is in the hair salon.  scissor unlocks the wad of hair.  the description of the scissor is "very sharp scissors able to cut through any hair."



[hiding places for the key]

[smelly key hiding place]
the wad of hair is a thing in the hair salon.  It is a closed openable container.  It is locked and lockable.  Scissor unlocks the wad of hair.  The description of the wad of hair is "A wad of hair leftover from someone's haircut."

[wooden key hiding place]
the char-siu bau is a thing in the restaurant.  it is a closed openable container.  It is locked and lockable.  The description of the char-siu bau is "an amazing delicacy that make you mouth drool.  You really want to eat it."

[toilet puzzle]
the toilet is a fixed in place thing.  The toilet is in the bathroom.  it is a open openable container. 

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
	say "the toilet clogs and a soggy scrap of paper appears!";
	move soggy scrap of paper to toilet.
	
	

[Madman Mercer]
Madman Mercer is a male man.  Madman Mercer is in the Cultural Plaza.  The description of Madman Mercer is "A white guy about 5 foot 7 inches with curly brown hair wearing a hockey mask.  He is holding a machete."

[Mr.Kiang's get the cat code: Madman Mercer]
[Every turn:
	if Madman Mercer is not visible begin;
			move Madman Mercer to the location of the player;
			say "Madman Mercer is running wildly at you, swinging his machete, and cursing at you.";
	end if.]
	
Every turn: if Madman Mercer is in a room (called the current space) begin;
let next space be a random room;
if Madman Mercer is visible for 3 turns, say "Madman mercer knocks you out, and everything goes black.";
if Madman Mercer is visible, say "Madman Mercer walks to another room.";
move Madman Mercer to next space [try to make Madman move after 3 turns];
end if.



Every turn:
	if Madman Mercer is visible for 3 turns, end the game in death [make it so that it is 3 turns in a row]
	

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
[1]flashlight Reflector Thing is an object.
[2]flashlight Reflector Condenser Lens Thing is an object.
[3]flashlight Reflector Condenser Lens Imaging Lens Thing is an object.
[4]flashlight Reflector Condenser Lens Imaging Lens Shutter Thing is an object.
[5]Film Projector is an object.



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
The Vault is a room.  It is north of the stage. "Snug yet eery room that gives you the heeby jeebies." The metal box is here. "A mammoth metal box, with a dial which can spin to any number.  It looks as hard as diamond, so don't get any ideas." Instead of opening the metal box, say "The box opens only when turned to the correct combination."
In the metal box is film. The metal box is closed and fixed in place. Understand "dial" as the metal box.
Spinning it to is an action applying to one thing and one number. Check spinning it to: if the noun is not the metal box, say "[The noun] does not spin." instead. Report spinning it to: say "Click! and nothing else happens."
Understand "spin [something] to [a number]" as spinning it to.
After spinning the closed metal box to 1384: now the metal box is open; say "Clonk! and the metal door swings slowly open, revealing [a list of things in the metal box]."


[definitions]
Pooping is an action applying to one thing.  Understand "poop in [something]" as pooping.
Flushing is an action applying to one thing.  Understand "flush [something]" as flushing.
Talking to is an action applying to one visible thing.  Understand "talk to [someone]"or "converse with [someone]" as talking to.

Check talking to: say "[The noun] doesn't reply."

[NPC]
The Store Clerk is a man in the convenience store.  The description is "A a very scruffy, sleepy looking man wearing a green sweater vest with jeans on."











