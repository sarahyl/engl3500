VAR item = ""

You live in a lovely, big house, and it's the perfect home for a mouse like you. There's plenty of food so you can always scrounge up something to eat, and the house is cluttered enough that nobody really ever notices if you sneak away, say, a thread spool because you need a new night stand.

And best of all, they've got a housecat. A silly, spoiled, wicked housecat.

Today, the family is out of the house, having left for a picnic at the park. You've got the whole day in front of you.

What's the plan?

* [Harass the housecat]
    Time to find out where he's hiding.
    -> look_for_cat

* [A snack, then harass the housecat]
    You decide to get a snack first before starting the main part of your day.
    -> snack

* What if you don't want to harass the housecat?
    Are you feeling alright?
        ** Feeling great. Why?
            It might be a good idea to take your temperature.
                *** You're just not in the mood for mischief at the moment. It's a burrow in your blankets kind of day.
                        That's fair. I, too, love staying in bed. Enjoy the cozy <3
                        -> END
                *** It gets a little old when it's always the same cat.
                        Does it though?
                        The lost art of having an archnemesis...
                        -> END
        ** Scratch that - you actually do want to.
            -> look_for_cat


== snack ==
Every respectable mouse's favorite room is the kitchen, so of course that's your first stop. 

Without the family around right now, you can take your time to pick out a snack. You open the refrigerator - the door's a little heavy, but still manageable for the healthy, energetic mouse that you are.

You stand back and peruse your options.

* The chocolate-covered strawberries
* The birthday cake

- You eat until you're content.

You climb onto the counter to dab daintily at your mouth with a napkin. On the opposite counter, something catches your eye:

* (pan)[A frying pan.]
    ~ item = "frying pan"
* (cleaver)[A meat cleaver.]
    ~ item = "meat cleaver"

- This could be helpful to you in your quest. You bring the {item} with you as you turn your attention to looking for your mortal enemy.

-> look_for_cat


== look_for_cat ==
Where do you look?
* [You look in the living room.]
    -> living_room
* [You look in the bedroom.]
    -> bedroom
    
== living_room ==
The living room has a big, squashy couch and big windows that cast panels of sunlight on the floor on bright days. Cats flit over to laze about here like insects to a flytrap.

Your adversary doesn't seem to be here though.

* [You look in the bedroom.]
    -> bedroom

->END

== bedroom == 

You head to the bedroom and spy your greatest foe napping on the bed.

His paws twitch like he's chasing something in his dream. Just last week, one of them destroyed your custom-ordered, cheese-shaped radio. One of your most prized possessions: gone, just that like, crushed beneath the foot of villainy.

He claimed that it was revenge for the {~apple|cherry} pie that you threw at his face the week before-

* -but that was revenge for the {~plum|lemon} pie that he dropped on you the week before that!

-> loop

=== loop ===
He told me that was revenge for {&kicking him into the refrigerator|you hitting him on the nose with a spatula|you setting off a mousetrap on his tail}

+ which was revenge for {&him punting you across the living room like a football|him trying to eat you|him flattening you with a rolling pin}
    -> loop
    
* which was revenge for... you're losing track actually...


- You contemplate your next step:

* Sneak up to the cat.
    You climb up the bed and tiptoe across it.
    
    Now that you think about it, one of the strings on your guitar snapped recently. The whiskers right in front of you seem to be a suitable replacement.
    
    You reach up and with a yank, you snap off one and immediately find yourself with a very awake and angry cat.
    
    ** Run!!
        -> runnn
    
    ** {snack.pan} Hit him with the frying pan
    -> frying_pan_success
    
    ** {snack.cleaver} Strike at him with the cleaver.
        //I'd like to give credit to my brother for coming up with the entire cleaver idea.
        You strike out with your cleaver, only for your archenemy to reach under his pillow and block you with another meat cleaver. Wily, wily cat!
        
        You're in a deadlock, but you are but a mouse against a cat who is at least four mice tall, and your weapon slips from your grasp.
        
        *** Run!!
            -> runnn
        
    
        

* {snack.pan} Wake up the cat.
    You bang on your frying pan, and your enemy's awake at once.
    
    ** [Blow a raspberry]
        You blow a loud raspberry. You can see steam coming out of his ears. A kettle whistles shrill in the distance. 
    ** [Run to the living room]
    - You run back out the door and down the hall towards the living room. Rounding the corner, you hide behind the wall by the entrace in wait. 
        
    Right as your archnemesis is barreling into the room, you swing the frying pan. 
    
    -> frying_pan_success
        
        
== runnn ==
You jump away and race away with the cat right on your heels.

{snack.cleaver: The cleaver comes down again and again, but you're nimble and quick and escape without even a nick. } 

You dart into the mousehole just in time with your new guitar string in hand. Overall, a successful day, and you set about repairing and retuning your guitar for the rest of the day.

-> END

    
== frying_pan_success ==

Your aim is perfect. His head is perfectly molded, wonderfully pan-shaped. What handiwork! Little confused chirping birds squeak and cycle about his head.
        
        *[Laugh gleefully.]
            You laugh nonstop and gleefully.
        *[Witch's cackle.]
            You let out your evillest witch's cackle.
            
        - Serves him right for that one time he tried to cook you into a pancake. 
        
        You hop back and scurry away. You hear him jump back to his feet and chase after you, but by then you just returned back to the safety of your mousehole. Pat yourself on the back. Another productive day!


--> END
