# scene1.ink
# Version adaptée de scene1.ks pour Ink
# Supprime les tags caméra, garde les éléments UI/sprites/fonds/pauses

-> start

=== start ===

# AUDIO: playse SoundEffects_Menu/chapter.ogg volume=70
# IMAGE: show Chapters/chapter_1_begin.png time=1000
# TEXT: show "SS-04" x=434 y=313 size=100 color=0xf2f2f2 font="earthorbiter" fade_in=fadeInLeft fade_out=fadeOutRight
# WAIT: 2500
# IMAGE: hide time=1000
# WAIT: 800
# AUDIO: playbgm Music/AIKATYPE_00.ogg loop=true fadein=true
# WAIT: 500

# UI: position message_window width=1280 height=720 top=0 left=0 marginl=250 margint=80 marginr=270 color=black opacity=130
# UI: show_message_window
# UI: layer message1 visible=true, message0 visible=false

Space is a mysterious thing. 
A vast sea of stars that doesn't ever seem to end, filled with suns, planets, and things we've yet to even discover.
No one knows just how dense our universe is, and humans will be long gone before they even know if there's someplace else where life blooms like it does on our earth.

# CG: Space

# UI: layer message1 visible=false
# BG: Backgrounds/big_01_space_g0.png method=crossfade time=2000
# UI: layer message1 visible=true

For now, all we can do is watch the stars lighting up our skies and attempt to uncover the wonders we've been blessed with, feeding our curiosity with theories, ideas and fantasies. A brightly lit sky is an inspiring sight, and why we've always had such a fanciful idea of the stars.

But in the end, they're nothing but burning suns. Most have died thousands of years ago, yet we can still see the living corpse of what they used to be. It's even one of the closest things to time travel: Time shapes space, just as space shapes time.

# BG: Backgrounds/big_01_space_g1.png method=crossfade time=2000

For that reason, science will probably never attain the absolute truth of our universe. To think that all of those shiny things we see at night actually means the deaths of thousands of solar systems suddenly becomes a gruesome thought, instead of the sweet, dreamy fantasies we imagine.

And like people, stars shine bright before their death, as the remnants of our accomplishments scatter like light for everyone else to see. And just like anyone else, I want people to see my life burning with passion and pride, before I become a corpse with nothing but my past to prove my existence.

# BG: Backgrounds/big_01_space_g2.png method=crossfade time=2000

After all, as a woman of science, I cannot believe in the afterlife. I need to prove myself, and make myself shine before I die. Like I said, ultimate truth will never be attainable: It's a holy grail, far from humanity's reach. Many tried to play with their lives like they're some sort of god, but none of them lived long enough to come up with scientific facts.

# UI: layer message1 visible=false
# IMAGE: show CG/cg01_spaceship.png layer=0 method=crossfade time=1000 width=1280 height=720
# CG: B22
# WAIT: 1000
# BG: Backgrounds/bg00_shuttle.jpg
# UI: layer message1 visible=true

And a researcher lives according to their facts. This is why I'm standing here right now. Nervously talking to myself, trying to get rid of the anxiety slowly eating at me.

My name is Euphémia. But everyone calls me Euphie. I'm 28, and I aced my astrophysics exams.

I went through intensive training to see if I was fit to navigate in space, and just as planned, passed without any issue. I've been assigned to work as the head researcher and manager at the Orbital Station named SS-04, short for Stellar Sanctuary Number 04.

This is one of many stations like this placed in orbit around Earth. They're quite big and never require too much maintenance, so the staff is pretty limited in each station. Don't know why they decided to pick someone as inexperienced and young as I to be the chief of some base I've never set foot on, but I guess that's thanks to my over-the-top results.

# AUDIO: fadeoutbgm time=2000
# IMAGE: free layer=0 method=crossfade time=1000

Suddenly, a synthetic voice jolts me out of my thoughts.

# UI: layer message0 visible=false
# AUDIO: playse SoundEffects_Action/beep1.ogg
# UI: layer message0 visible=true
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Computer:** "Arrival in five minutes. Please sit tight and make sure your belts are fastened as we approach Orbital Station SS-04."

# AUDIO: playbgm Music/03_-_Space_Confessional_-_juneji.ogg
# IMAGE: free layer=1
# UI: layer message1 visible=true, message0 visible=false

Sounds like we're nearly there. I've been to space before during my training, but it's the first time I'll be staying so long outside of the surface of the earth. Kinda crazy to believe one can live so long outside of their own planet. I'll have to get used to it for the next few months.

Not like I'm really gonna miss Earth anyway. I'm excited enough just thinking about how great it must feel to learn more about what's surrounding our little blue planet. It's hard to see as the ship is flying directly towards it, but I can make out the shape of the space station. It looks much bigger than I expected. It's entirely white, with a giant tube as the supporting and main part of the station, surrounded by circular cylinders making up the many different floors.

# UI: layer message0 visible=false
# AUDIO: playse SoundEffects_Action/engine_stop.ogg
# BG: Backgrounds/bg01_space_shuttle.png method=crossfade time=1000
# UI: layer message1 visible=true

The spaceship I'm on comes to a stop. The belts automatically unfasten themselves for some weird security reason, and I'm still the only one on the entire ship. The two men in the cockpit sound like they're talking to someone over the radio.

I take a plastic bottle out of my bag. My throat feels dry. Outside the little round window next to me, I could see the giant logo of the station's number on the perfectly white steel plates making up this strange structure.

# UI: layer message0 visible=false
# CHARA: show Pilot chara/9/pilot_neutral.png time=1000 width=495 height=720 left=410 top=0
# UI: layer message0 visible=true
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Pilot:** 
# CHARA: mod Pilot chara/9/pilot_neutral2.png time=200
"Are you ready to get onboard?"

# CHARA: mod Pilot chara/9/pilot_neutral.png time=200
# IMAGE: show EuphieSprites/euphie_normal_shocked.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Ah!"

# IMAGE: free layer=2
# CHARA: mod Pilot chara/9/pilot_neutral.png time=200
# IMAGE: free layer=1
# UI: layer message1 visible=true, message0 visible=false

That guy surprised me. It's one of the pilots. I put my bottle back in my bag and get up.

I'd been sitting for so long, my legs felt weak.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217
# IMAGE: show EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Y-Yes!"

# IMAGE: free layer=2

**Pilot:** 
# CHARA: mod Pilot chara/9/pilot_neutral2.png time=200
"Then please let us lead the way. Through this door, you'll find the station's Gravity Change Chamber. It'll acclimate your body to the station's gravity."

"Once the process is done, you shall be greeted by Klaus, the senior past chief of the station."
# CHARA: mod Pilot chara/9/pilot_neutral.png time=200

# IMAGE: free layer=1
# UI: layer message1 visible=true, message0 visible=false

I already know this kind of protocol by heart, but I can't act like a bratty know-it-all, especially since everyone else in this damn sector seems to be men double my age.

# UI: layer message1 visible=false
# CHARA: hide_all time=500

-> gravity_chamber

=== gravity_chamber ===

# BG: Backgrounds/bg02_corridor_A.png method=crossfade time=1000
# WAIT: 1500
# UI: layer message1 visible=true

I enter the GCC (Gravity Change Chamber). Nothing too peculiar, I've done this countless times.

# UI: layer message1 visible=false
# AUDIO: playse BGS/inside_spaceship.ogg loop=true layer=3
# WAIT: 1000
# UI: layer message1 visible=true

The air pressure starts to shift. It's really intimidating and weird the first time, but you end up actually enjoying how funky it feels. Or maybe I'm just weird.

# UI: layer message1 visible=false
# AUDIO: fadeoutse time=2000 layer=3
# WAIT: 2000
# UI: layer message1 visible=true

My body now feels much heavier than before, and the gravity feels like what you're used to on Earth.

# UI: layer message1 visible=false
# AUDIO: playse SoundEffects_Action/door1.ogg layer=2
# WAIT: 2000
# UI: layer message1 visible=true

The door to the station opens.

# UI: layer message1 visible=false
# CHARA: show Klaus chara/2/klaus.png time=1000 width=495 height=720 left=410 top=0
# WAIT: 1200
# UI: layer message1 visible=true

Right behind it, a tall and fierce looking man is standing there, crossing his arms. I'm taken aback a little, since his gaze is so intimidating it feels like he's about to scold me.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** "I presume you are Euphémia?"

# IMAGE: show EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "C-Correct."

# IMAGE: free layer=2

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_smile.png time=200
"Welcome to SS-04. You can call me Klaus. Unless you've forgotten something on the ship, if you would get onboard..."

# IMAGE: show EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Oh, yes, of course."

# IMAGE: free layer=2
# IMAGE: free layer=1
# UI: layer message0 visible=false, message1 visible=false
# BG: Backgrounds/bg02_corridor_B.png method=crossfade time=1000

-> corridor_tour

=== corridor_tour ===

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus.png time=200
"I'll be your guide around the station until you feel like you've understood the layout of this place."

"It might seem big and intimidating at first, but it's much easier to navigate than you might imagine. Even I have not been to half of the rooms here."

# IMAGE: free layer=1
# UI: layer message1 visible=true, message0 visible=false

His words are reassuring, and I start to wonder whether his fierce stance and expression was just a way of appearing more imposing and leader-like or not.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217
# IMAGE: show EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Isn't that... Kind of important?"

# IMAGE: free layer=2

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_confused.png time=200
"What do you mean?"

# IMAGE: show EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Knowing about every single room the station has. If you run into any kind of problems..."

# IMAGE: free layer=2
# IMAGE: free layer=1
# UI: layer message1 visible=true, message0 visible=false

I asked bluntly, without realizing how condescending that might sound, especially seconds after coming onboard.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_closed.png time=200
"Eh, you've got a point here."
# CHARA: mod Klaus chara/2/klaus_smile.png time=200
"But don't worry, I just said that I personally do not know about half of them."

"We've got a certain someone who knows absolutely everything about them. Moreover, most are just spare or storage rooms, so nothing too important."

# IMAGE: show EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "How are there are so many unimportant rooms?"

# IMAGE: free layer=2

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus.png time=200
"This station used to be a spaceship."

# IMAGE: show EuphieSprites/euphie_normal_surprised.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Now that's something I did not know."

# IMAGE: free layer=2

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_thinking.png time=200
"I can't remember too well, but since it became obsolete for Earth-to-space transport, it was simply reassigned as a basic orbital station, and renamed accordingly."

# IMAGE: show EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "I guess that's why it's so big."

# IMAGE: free layer=2

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus.png time=200
"Correct. And also the reason why you don't have to worry about the general structure of the spaceship."
# CHARA: mod Klaus chara/2/klaus_thinking2.png time=200
"Usually, the unimportant rooms are only accessible to the engineers anyway, to avoid getting people lost in this titanic place."
# CHARA: mod Klaus chara/2/klaus.png time=200
"But enough about that. For now, I'll be presenting you to the staff, and the most important places."

"Let's start with the dormitory, so you can at least lay down your luggage. Those seem quite heavy."

# IMAGE: show EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Yeah... Thanks."

# IMAGE: free layer=2
# IMAGE: free layer=1
# CHARA: hide Klaus time=1000
# UI: layer message1 visible=true, message0 visible=false

I don't know why I brought so much. My own comfy pillow, clothes I probably won't be able to wear, books... I even brought some snacks I could never get up here. I have a sweet tooth, what can I tell you. I follow Klaus inside the great corridor, suddenly realizing that my luggage really is heavy. Surely because of both the air pressure change and my fatigue.

# UI: layer message0 visible=false, message1 visible=false
# CHARA: show Klaus chara/2/klaus_confused.png time=1000 width=495 height=720 left=410 top=0
# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_confused.png time=200
"Aren't those too heavy? Do you want me to take one or two of those bags?"

# IMAGE: show EuphieSprites/euphie_thinking_embarassed.png layer=1 x=35 y=458 time=0 width=181 height=217

**Euphie:** "N-No! I'm fine, don't worry about it."

# IMAGE: free layer=2
# IMAGE: free layer=1
# UI: layer message1 visible=true, message0 visible=false

Truth be told, I should have accepted.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_closed.png time=200
"Good. Because there's around four more minutes of walking."

# IMAGE: show EuphieSprites/euphie_normal_shocked_teeth.png layer=1 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Wh-!"

# IMAGE: free layer=2
# IMAGE: free layer=1
# UI: layer message1 visible=true, message0 visible=false

F-Four?! Now I just feel like an idiot.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_smile.png time=200
"I'm just kidding. The station is divided into multiple floors, and you access them through the central elevators just there."

# IMAGE: free layer=1

-> elevators

=== elevators ===

# UI: layer message1 visible=false, message0 visible=false
# BG: Backgrounds/bg03_elevators_front.png method=crossfade time=1000
# UI: layer message1 visible=true, message0 visible=false

Klaus came to a stop in front of the elevators.

# AUDIO: playse SoundEffects_Action/beep1.ogg layer=3
# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus.png time=200
"For practical reasons, there are two different ones. They're just as easy to use as any kind of elevator."
# AUDIO: playse SoundEffects_Action/door1_soft.ogg layer=3
"Now, if you would get inside so we can continue our tour."

# IMAGE: free layer=1
# UI: layer message1 visible=false, message0 visible=false
# BG: Backgrounds/bg04_elevators_inside.png method=crossfade time=1000
# UI: layer message1 visible=true, message0 visible=false
# AUDIO: playse SoundEffects_Action/footsteps_light.ogg layer=3

Klaus goes in the elevator, and I follow him in.

# AUDIO: playse SoundEffects_Action/door1_soft_2.ogg layer=2

The gate closes and the elevator starts to move slowly.

# AUDIO: playse BGS/elevator_up.ogg loop=true layer=4

To break the silence, Klaus continues his explanations.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** 
# CHARA: mod Klaus chara/2/klaus_closed.png time=200
"At the very bottom lie the escape pods. Obviously, we're only supposed to access them during emergencies. On floor -2 lie the server and engineering room."

"Only the main engineer and technical staff have access to them: So Joshua, and Alexei. Floor -1 has nothing but spare storage rooms, accessible only to Joshua."

# CHARA: mod Klaus chara/2/klaus.png time=200
"Basically, anything below the central floor is of no importance to you, so don't worry too much."

# IMAGE: show EuphieSprites/euphie_normal_neutral.png layer=1 x=35 y=458 time=0 width=181 height=217

**Euphie:** "Easy enough."

# IMAGE: free layer=2
# IMAGE: free layer=1
# AUDIO: fadeoutse time=400 layer=4
# UI: layer message1 visible=true, message0 visible=false
# AUDIO: playse SoundEffects_Action/elevator_ding.ogg layer=2

A soft ring indicates we've arrived on floor one.

# AUDIO: playse SoundEffects_Action/door1_soft.ogg layer=3

The doors open once again.

# UI: layer message0 visible=true, message1 visible=false
# IMAGE: show UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 time=0 width=181 height=217

**Klaus:** "And we've arrived on the first floor."

# IMAGE: free layer=1
# UI: layer message0 visible=false, message1 visible=false

-> scene1part2

=== scene1part2 ===
# FADE: mask time=1000 effect=fadeIn color=0x000000
# WAIT: 1100
# JUMP: scene1part2joshua.ink
-> END
