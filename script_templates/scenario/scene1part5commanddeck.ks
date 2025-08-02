[_tb_system_call storage=system/_scene1part5commanddeck.ks]

[tb_start_tyrano_code]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
And thus, we finished our meal.[l] Soon enough, we were at the elevator doors, waiting to go up to the command deck on the third floor. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=false]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
[wse]
[chara_show  name="Nicola"  time="500"  wait="false"  storage="chara/5/nicola.png"  width="495"  height="720"  left="390"  top="0"  reflect="false"  ]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
Here we are, Euphie! [l]This is where we'll probably spend most of our time. [p]
[freeimage layer=1]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_hide_all  time="1000"  wait="false"  ]
[fadeoutbgm time=2500]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=3]
[bg  time="1000"  method="crossfade"  storage="Backgrounds/bg10_command_deck.png"  ]
[wait time=2500]
[playbgm storage="/music/03_-_Space_Confessional_-_juneji.ogg"]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
In perfect sync, the elevator gates open and give sight to a grand and spacious room, with the elevator placed in the centre of it. [l][r][r]To compensate with the absence of walls supporting the weight of the other floors, multiple pillars were constructed in their place. [l]It looked almost too close to those command decks in high budget science fiction movies.[l] But this time, with more computers and handy high tech machinery dedicated to astrophysics and related science. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_show  name="Klaus"  time="1000"  wait="false"  storage="chara/2/klaus.png"  width="495"  height="720"  left="240"  top="0"  reflect="false"  ]
[chara_show  name="Nicola"  time="1000"  wait="false"  storage="chara/5/nicola_smile.png"  width="495"  height="720"  left="520"  top="0"  reflect="false"  ]
[chara_show  name="Alexei"  time="1000"  wait="false"  storage="chara/4/alex.png"  width="495"  height="720"  left="800"  top="0"  reflect="false"  ]
[chara_show  name="Joshua"  time="1000"  wait="true"  storage="chara/3/joshua.png"  width="495"  height="720"  left="-81"  top="0"  reflect="false"  ]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=wait]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
We spend most of our days here. [l]This is where we supervise our excursions, and analyse our data from the observatory. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_open.png" wait=true time=200 cross=false]
See the command deck as the center of the station. [l]It’s a room which lets you communicate with anyone and see anything going on here, hence why we spend so much time here. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" wait=true time=200 cross=false]
For example, we can supervise and monitor anything going on in the lower floors and see if Joshua actually is working. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_scared.png" wait=true time=200 cross=false]
You do that?! [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_smile.png" wait=true time=200 cross=false]
Sorry, I thought I already mentioned it to you. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_question.png" wait=true time=200 cross=false]
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" wait=true time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Tomorrow, let’s say we do checkups and maintenance around this floor. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" wait=true time=200 cross=false]
I’d say Klaus and you go out through the port, with you driving the microship up to the third floor, and Klaus doing the maintenance in his space suit. [l]Alexeï could supervise. [p]
I’ll be working in the observatory to check things out, and Joshua would be doing the maintenance in the engine room. [l]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" wait=true time=200 cross=false]
You follow? [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
I think I understand, but... [l]I’m unsure about what microships are supposed to be... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_thinking.png" wait=true time=200 cross=false]
Microships are, just like the name implies, very small spaceships that can be controlled by only one or two people. [l]Since the station is that big, we need to use one if we wish to do maintenance outside the station. [p]
[chara_mod name="Alexei" storage="/chara/4/alex_thinking_look.png" wait=true time=200 cross=false]
The manual maneuvering suits are quite good already to move around freely, but see the microship as an extra precaution. [p]
[chara_mod name="Alexei" storage="/chara/4/alex_thinking_closedeyes.png" wait=true time=200 cross=false]
The ship can also be controlled directly from the command deck if something goes wrong, and unless the permission is given, it cannot fly too far away from the station. [p]
Since the microships and the suits are physically linked to each others through cables, this avoids any kinds of incidents as well. [p]
[chara_mod name="Alexei" storage="/chara/4/alex.png" wait=true time=200 cross=false]
It’s also much more economical than letting astronauts fly around wasting even more fuel. [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
Alexeï sure speaks up when it’s about sharing his knowledge. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Alright, I get the picture now. [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
How about we do some kind of space diving test tomorrow? [l]The team you picked out seemed fine, Nicola. [l]How about we go with it? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_open.png" wait=true time=200 cross=false]
Ready whenever! [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_smile.png" wait=true time=200 cross=false]
I’ll show you how serious I am about work, Euphie! [p]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" wait=true time=200 cross=false]
... [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" wait=true time=200 cross=false]
Then it’s decided. Tomorrow at 15:00, let’s get into it. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_perplexed.png" wait=true time=200 cross=false]
This late? [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png" wait=false time=200 cross=false]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
You say as if you could sense night or day time. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" wait=true time=200 cross=false]
Plus, since she’s an astronaut like me and Alexeï, we have to actually work out and do our training before lunch time. [l] We have to wake up early if we want to be in decent form during excursions. [p]
Our station is big enough to have it’s own center of gravity, so we don’t have to work out as much as if we were on a small station, where gravity is much lighter. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
But that doesn't mean we can skip out on it, since we do spatial excursions. [p]
Euphémia, we don’t need any kind of special training equipment, so we simply train by jogging around the corridors since they loop, and do some basic stretching exercises near our dorms. [p]
I used to do them with Alexeï and Joshua, but Joshua soon gave up, followed by Alexeï. [p]

[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Well, that’s definitely not as extreme as what I used to do before my exams... [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" wait=true time=200 cross=false]
Figure they must still use the same old training program for new recruits... [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
But almost every stations have their own center of gravity nowadays, so I don't think it's necessary to do any kind of over the top intensive exercice now. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_smile.png" wait=true time=200 cross=false]
That means you’re probably in much better shape than all of us, truth be told. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
Alright then guys, how about you come join us starting tomorrow as well? [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png" wait=true time=200 cross=false]
It’s true that I’ve been gaining a bit more chub lately... [l]Some exercise would be more than welcome, actually! [p]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" wait=true time=200 cross=false]
No thanks, sorry. [l]I need to work on my research. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Then that settles it.[l] Tomorrow at 7:00, Nicola and Joshua, feel free to show Euphie around the place and such before having breakfast. [p]
At 10:00, Joshua,  Euphémia, let’s go and do some exercices just outside the dorms. [l]At 13:00, let’s meet and get lunch. [p]
And finally, at 14:00, Euphémia and I will meet in the hangar to do some test diving and check up on the station’s surface. [p]
In that time, Alexeï and Nicola shall be in the command deck, supervising us.[l] Is that all clear? [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Roger. [p]
[freeimage layer=2]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" wait=true time=200 cross=false]
Wasn’t Euphie supposed to be the new leader? [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" wait=true time=200 cross=false]
Yes, of course, but I wouldn’t be mistaken by thinking you’re still getting used to it all, Euphémia, right? [p]

[image storage=default/EuphieSprites/euphie_normal_stressed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Actually, yes, I’m glad you’re still taking the leadership of all this for the moment... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex.png" wait=true time=200 cross=false]
Naturally. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png" wait=true time=200 cross=false]
You can’t just expect her to lead us while she’s barely been on a day, Joshua! [p]

[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I’ll figure things out on my own, don’t worry too much about me. [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
Then let’s call it a day.[l] Nicola, how about you show her the living quarters in more details before we all rest? [p]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_happy.png" wait=true time=200 cross=false]
Sure thing! [l]Let’s go, Euphie! [p]

[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yeah, sure. [p]
[freeimage layer=2]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_hide_all  time="500"  wait="false"  ]
[stopbgm  time="2700"  fadeout="true"  ]
[bg  time="1500"  method="crossfade"  storage="black.png"  ]
[_tb_end_tyrano_code]

[jump  storage="scene1part6dorms.ks"  target=""  ]
