VAR lives_left  = 2
VAR cur_room = -> room_1

Choose the right doors to successfully escape. Beware.

-> room_1

== room_1 ==
You are in a room faced with three doors. They all look the same except for their color.

* You go through the white door.
    -> doom_1a
    
* You go through the blue door.
    -> room_2

* You go through the orange door.
    -> narnia

== doom_1a ==
There is a pit of lava right beyond the door.

~lives_left = lives_left - 1

{ lives_left > 0:
	You barely catch yourself from falling in in time and back down out of the room.
	-> room_1
}

You trip over your shoelaces and fall in.

-> END

== narnia ==
The room is empty, except for a grand wooden wardrobe. The doors are wide open - invitingly? ominously? - and you can see that the wardrobe is filled with fur coats.  

* To Narnia!
->question_mark
* [Nope. Turn around.] You turn around and return to the room with the doors.
    -> cur_room


== to_narnia ==
    You step into the wardrobe and push your way past the coats. Snow crunches beneath your shoe.
    
    The narrator is stuck in this world and cannot follow you there. Good luck.
    
    -> END

-> question_mark






== room_2 ==

~cur_room = -> room_2
You enter into a room and are faced with three doors.

* You go through the red door.
    -> room_3
    
* You go through the green door.
    -> doom_2

* You go through the yellow door.
    -> player_in_wonderland


== doom_2 ==
~lives_left = lives_left - 1

{ lives_left > 0:
	A wave of bowling balls roll towards you and you slam the door shut just in time.
	-> room_2
}

A wave of bowling balls come rolling towards you and flatten you.
->END

== player_in_wonderland ==

The room is empty, except for a hole in the middle of the room. A sign behind it reads "RABBIT HOLE TO WONDERLAND." When you peer down, all you can see is inky darkness. 

Technically, it's large enough to be an exit.

* Onwards to wonderland!
-> question_mark


* [Nope. Turn around.] You turn around and return to the room with the doors.
    -> cur_room


== to_wonderland == 
    You step up to the rabbit hole.
    
    The narrator is stuck in this world and cannot follow you down. Good luck.
    
    -> END



== room_3 ==
You enter into a room and are faced with three doors.

~cur_room = -> room_3
* You go through the pink door.
    -> freedom
    
* You go through the teal door.
    -> ship

* You go through the purple door.
    -> doom_3

== ship == 
The room is empty, except for a painting hanging on the opposite wall. You realize that it's not an ordinary painting, though - it looks over the wooden railing of a ship, with nothing over open ocean beyond.

* Adventure awaits you[ - climb through the painting.]! You move towards the painting, intending on climbing through the painting and boarding the ship.
->question_mark

* [Nope. Turn around.] You turn around and return to the room with the doors.
    -> cur_room


== to_ship ==

    You step up to the painting.

    The narrator is stuck in this world and cannot follow you there. Good luck.
    
    -> END

== doom_3 == 

The Tiger
by Nael, age 6
From "They're Singing a Song in Their Rocket"

The tiger
He destroyed his cage
Yes
YES
The tiger is out

~lives_left = lives_left - 1

{ lives_left > 0:
	The tiger hasn't spotted you yet by some miracle. You slowly close the door and slink away.
	-> room_2
}

-> END

== question_mark ==

Are you sure?
+ Yes.
    What about your friends and family?
        ++ Who?
            {cur_room == -> room_1: -> to_narnia}
            {cur_room == -> room_2: -> to_wonderland}
            {cur_room == -> room_3: -> to_ship}
            ->END
        ++ Nevermind. You [want to turn back.] turn back and return to the other room in hopes of finding your way out.
            -> cur_room

+ Nevermind. You [want to turn back.] turn back and return to the other room in hopes of finding your way out.
    -> cur_room

== freedom == 
You step out and the sun nearly blinds you.

Freedom!!! After eons of (nine) doors!!!

-> END