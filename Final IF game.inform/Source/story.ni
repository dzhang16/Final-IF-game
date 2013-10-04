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

basket of fruit is an open openable container in the fruit stands.  The description is "A glowing basket containing many glowing apples."


[instead statements]

instead of taking flashlight:
	say "taken";
	move flashlight to player.
	
Instead of eating char-siu bau:
	say "you start eating the char-siu bau, and suddenly you bite something hard.  You see that it is a wooden key.";
	move wooden key to player.;
	remove char-siu bau from play.
	


[after staments]

after taking flashlight:
	now description of the basket of fruit is "A basket of apples.".
	

[safes]

the beautiful safe is scenery in the Hair Salon.  It is a closed openable container.  It is locked and lockable.  beautiful key unlocks the beautiful safe.  The description of the beautiful safe is "A beautiful safe that has a keyhole that look like a beautiful key goes in."

the titanium safe is scenery in the restaurant.  It is a closed openable container.  It is locked and lockable.  titanium key unlocks the titanium safe.  The description of the titanium safe is "A titanium safe able to with stand attacks of all sorts."

the green safe is scenery in the convenience store.  It is a closed openable container.  It is locked and lockable.  green key unlocks the green safe.  The description of the green safe is "A green safe that is very green."

the fancy safe is scenery in the stage.  It is a closed openable container.  It is locked and lockable.  fancy key unlocks the fancy safe.  The description of the fancy safe is "a very fancy and expensive looking safe.  I would rather steal the safe than what's inside."

the wooden safe is scenery in the video store.  It is a closed openable container.  It is locked and lockable.  wooden key unlocks the wooden safe.  The description of the wooden safe is "a wooden safe crafted very well from wood."

the smelly safe is scenery in the bathroom.  It is a closed openable container.  It is locked and lockable.  smelly key unlocks the smelly safe.  The description of the smelly safe is "a safe stained with the smell of poop and pee."

[keys]

the beautiful key is a thing in the bathroom.  beautiful key unlocks the beautiful safe.  The description of the beautiful key is "a beautiful key that unlocks beautiful things."

the titanium key is a thing in the video store.  titanium key unlocks the titanium safe.  The description of the titanium key is "a titanium key that can unlock titanium things."

the green key is a thing in the furniture store.  green key unlocks the green safe.  The description of the green key is "a green key that looks like it unlocks green things."

the fancy key is a thing in the stage.  fancy key unlocks the fancy safe.  The description of the fancy key is "an expensive looking key that looks like it unlocks expensive things."

the wooden key is a thing.  Wooden key is in the char-siu bau.  wooden key unlocks the wooden safe.  The description of the wooden key is "a well crafted wooden key to unlock wooden things."

the smelly key is a thing.  Smelly key is in the wad of hair.  smelly key unlocks the smelly safe.  The description of the smelly key is "a key with a poopy smell."

[other keys]

the scissor is a thing.  Scissor is in the hair salon.  scissor unlocks the wad of hair.  the description of the scissor is "very sharp scissors able to cut through any hair."



[hiding places for the key]

[smelly key hiding place]
the wad of hair is a thing in the hair salon.  It is a closed openable container.  It is locked and lockable.  Scissor unlocks the wad of hair.  The description of the wad of hair is "A wad of hair leftover from someone's haircut."

[wooden key hiding place]
the char-siu bau is a thing in the restaurant.  it is a closed openable container.  It is locked and lockable.  The description of the char-siu bau is "an amazing delicacy that make you mouth drool.  You really want to eat it."

[Madman Mercer]
Madman Mercer is a male man.  Madman Mercer is in the Cultural Plaza.  The description of Madman Mercer is "A white guy about 5 foot 3 inches with curly brown hair wearing a hockey mask.  He is holding a machete."

[Mr.Kiang's get the cat code: Madman Mercer]
Every turn:
	if Madman Mercer is not visible;
		if Madman Mercer is in a room (called the current space) for 3 turns begin;
			move Madman Mercer to the location of the player;
			say "Madman Mercer is running wildly at you, swinging his machete, and cursing at you.";
		end if.
	


















