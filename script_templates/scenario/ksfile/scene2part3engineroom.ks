[_tb_system_call storage=system/_scene2part3engineroom.ks]

[tb_start_tyrano_code]
[bg storage=Backgrounds/bg02_corridor_D.png method=crossfade time=1500 wait=true]
[chara_show  name="Nicola"  time="1000"  wait="true"  storage="chara/5/nicola_angry.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
She steps off before me, and you could feel her anger from the way she fiercefully made her way down the wall, as if she was punching the walls. [l][r][r]
I don’t know if Joshua’s gonna survive this. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
So this is floor -2? [p]
[freeimage layer=2]

[chara_mod name="Nicola" storage="/chara/5/nicola_question.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Uh? [l]Oh, yeah, right, you've yet to get down here, haven't you? [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_agressive.png" time=200 cross=false]
Yeah, that’s floor -2 alright. [l]I can smell that rat's stench whenever I get near here. [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
By rat, she probably referred to Joshua.[l] I kinda feel sorry for him... [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_angry.png" time=200 cross=false]
He’s probably screwing around in the engineering room, like last time. [l]How can he screw up so badly, and so often? [p]
[freeimage layer=1]
[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]
[chara_hide_all  time="1000"  wait="true"  ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]
[bg storage=Backgrounds/bg13_gate.png method=crossfade time=1500 wait=true]
[chara_show  name="Klaus"  time="1000"  wait="false"  storage="chara/2/klaus_angry.png"  width="495"  height="720"  left="102"  top="0"  reflect="false"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="EarthOrbiter"<font color="#85e085"></font>
Nicola was so busy rambling, she didn’t notice that Klaus was already there, in front of what seems to be the engineering room. [l][r][r]
He had a serious look and stance, like usual, but seeing him floating slightly above the floor almost made me burst out laughing. [p]
[chara_show  name="Nicola"  time="500"  wait="false"  storage="chara/5/nicola_neutral.png"  width="495"  height="720"  left="585"  top="0"  reflect="false"  ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Hey, Klaus.[l] You here because of him as well? [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
Klaus sighed deeply. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Yes, I just got here too. [l]He doesn’t seem to realize how dangerous this kind of situation is. [l]His obliviousness is depressing me. [p]

[freeimage layer=1]
[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[chara_move  name="Nicola"  anim="true"  time="500"  effect="easeInQuad"  wait="true"  left="386"  top="1"  width="495"  height="720"  ]

[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=1]
[wait  time="1200"]
[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=2]
[wait  time="500"]
[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=3]
[wait  time="400"]
[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=4]
[wait  time="600"]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Nicola tried to open the door, but it didn’t budge. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting.png" time=200 cross=false]
Oh, of course. [p]
[freeimage layer=1]
[chara_move  name="Nicola"  anim="true"  time="2500"  effect="easeInQuad"  wait="false"  left="950"  top="0"  width="495"  height="720"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Nicola stopped trying, and went up to one of the walls near the elevator, climbing up to it like a frog... [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting_closed.png" time=200 cross=false]
[wait time=600]
[chara_move  name="Nicola"  anim="true"  time="250"  effect="easeInQuad"  wait="true"  left="366"  top="0"  width="495"  height="720"  ]
[playse storage=SoundEffects_Action/Steel_Hit.ogg loop=false clear=false layer=1]
[quake  time="500"  count="3"  hmax="10"  wait="true"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

...Before taking support from the walls to propel herself up to the metallic gate, giving a huge kick to it with all her strength. [p]

[chara_mod name="Nicola" storage="/chara/5/nicola_angry.png" time=200 cross=false]
[chara_move  name="Nicola"  anim="true"  time="500"  effect="easeInQuad"  wait="false"  left="465"  top="0"  width="495"  height="720"  ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Ouch! [l]Fuck! [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
...Doing nothing but hurting herself in the process. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Nicola... [l]What are you doing... [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_angry.png" time=200 cross=false]
Damnit, that hurts...[l] Opening that door, of course! [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Did it work? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting.png" time=200 cross=false]
...[l]No. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
What did you expect...? [l]This isn’t some old attic in a warehouse, this is a well protected room, only open to the engineer of this place. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" time=200 cross=false]
Also, the change in gravity doesn’t help. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
So Joshua’s stuck in there? [p]
[freeimage layer=2]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Stuck? [l]Oh no, if he went in there, he must have had his access card on him. [p]
He’s probably thinking he can take a nap in there since no one can get to him. [l]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" time=200 cross=false]
However... [p]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Klaus rolled up his sleeve again to look at his watch. [l]At first, I was confused as to why he would check what time it was in such a situation, but he started tapping on the glass like it was a phone. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
[image storage=default/Com_Alex/alex_com.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
What is it? [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Alexeï’s voice rung out from some speakers on the watch. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
Hey, Alexeï. [l]Sorry to bother you, but Joshua’s at it again, if you know what I mean. [p]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
[image storage=default/Com_Alex/alex_com.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
...Again? [p]
[freeimage layer=3]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Yes. [l]If you could please- [p]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
[image storage=default/Com_Alex/alex_com.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Open the door, yeah, I know. [l]Gimme a sec, I was in the observatory. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
He hangs up. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Oh, right, we forgot to give you your communication bracelet yesterday. [l]We'll do that later. [p]
Of course, it lets you see what time it is, but also lets you communicate with every team member as long as you have their pager number. [p]
You can check other things, like a map of the station if you’re having problems figuring out where everything is. [p]
[image storage=default/EuphieSprites/euphie_normal_surprised.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
That looks practical. [p]
[freeimage layer=2]

[playse storage=SoundEffects_Action/door1.ogg loop=false clear=false layer=1]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
The door finally opens. [l]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer="message1" visible=false]
[chara_mod name="Nicola" storage="/chara/5/nicola_angry.png" time=200 cross=false]
[chara_hide  name="Nicola"  time="1000"  wait="true"  pos_mode="false"  ]
[layopt layer="message1" visible=true]
Nicola immediately goes in, even angrier than before. [l]
[fadeoutbgm time=2500]
[chara_hide_all time="888" wait="false"]
[bg storage=engine_room.jpg method=crossfade time=1000 wait=true]

The room’s air feels cold and wet. [l]Pipes are everywhere, and it looked nothing like the rest of the rooms. [l]It was as if you could expect some steam to flow out of those pipes any moment, and hear the tics of giant cogs like in a steampunk movie. [l]Joshua was... [l]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_show  name="Joshua"  time="1000"  wait="true"  storage="chara/3/joshua_sleep.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

[r][r]Mouth wide open, holding a pillow to his face, in one of the corners of the room. [l]I feared that Nicola was about to snap his neck or something. [l]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_show  name="Nicola"  time="1000"  wait="true"  storage="chara/5/nicola_agressive.png"  width="495"  height="720"  left="1014"  top="0"  reflect="false"]

[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

She jumps towards him... [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_move  name="Nicola"  anim="true"  time="300"  effect="easeInQuad"  wait="true"  left="539"  top="0"  width="495"  height="720"  ]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_angry.png" time=200 cross=false]
[quake  time="500"  count="3"  hmax="10"  wait="true"  ]
[playbgm storage="/music/04_-_Comfortable_Void_-_postblankvoid.ogg"]
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png" time=200 cross=false]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
WAKE UP! [p]

[chara_mod name="Joshua" storage="/chara/3/joshua_scared_flip.png" time=200 cross=false]
[chara_move  name="Joshua"  anim="true"  time="300"  effect="easeInQuad"  wait="false"  left="190"  top="0"  width="495"  height="720"  ]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
AHHHHHHHHH!
[playse storage=SoundEffects_Action/Steel_Hit.ogg loop=false clear=false layer=1]
[quake time="150" count="2" hmax="5" wait="true"]
[p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
She was about to slap him, but he hits his head in surprise at her shouting before she had the time to. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Nicola" storage="/chara/5/nicola_agressive.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Joshua. [l]What the hell. [l]Is your PROBLEM. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Wh-[l]What’s wrong! [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_angry.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
What's wrong? [l]What's wrong?! [l]Look at us! [l]Every floor up to the living quarters has its gravity all fucked up! [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_angry.png" time=200 cross=false]
Only you could change that, same thing as the last two times! [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Uh?! [l]...[l]Oh... [p]
#<font face="EarthOrbiter"<font color="#85e085"></font>

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

Joshua finally realized they were all floating. [p]

[chara_mod name="Joshua" storage="/chara/3/joshua_sleep_smile.png" time=200 cross=false]
[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Oops, I did it again. [p]
[chara_move  name="Nicola"  anim="true"  time="300"  effect="easeInQuad"  wait="true"  left="380"  top="0"  width="495"  height="720"  ]
[playse storage=SoundEffects_Action/spank_head.ogg loop=false clear=false layer=1]
[chara_mod name="Joshua" storage="/chara/3/joshua_scared.png" time=200 cross=false]
[quake time="150" count="2" hmax="5" wait="true"]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Nicola slapped him on the head. [p]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_angry.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
I’m so tired of you screwing up all the time! [p]
[chara_show  name="Klaus"  time="1000"  wait="false"  storage="chara/2/klaus.png"  width="495"  height="720"  left="724"  top="0"  reflect="false"]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Now now, settle down Nicola. [l]I’d rather hear from him how he managed to do it yet again. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_perplexed.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
I think I... [l]Decided to take a nap before I could check up on the Gravity Change system. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
[freeimage layer=1]
[layopt layer="message0" visible=false]

[current layer="message1"]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Klaus sighed. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
Again. [p]

[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 cross=false]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting.png" time=200 wait=false cross=false]
#<font face="EarthOrbiter"<font color="#85e085"></font>
Joshua went silent, as if to atone for his failure. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Euphémia, you may not know but... [p]
Basically, it’s necessary for the engineer to check up on the Gravity Change system every five days to confirm that everything is fine so we can go on living with earth’s gravity. [p]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
For what reason? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" time=200 cross=false]
Keeping a sufficient level of gravity to be close to the one down on earth is rather costly in terms of energy and resources. [p]
If we detect anything wrong, or that there is not enough energy to supply the station for the escape pods and boarding deck, the Gravity Change system will automatically shut down. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png" time=200 cross=false]
It can also happen with the lights. [l]They eat up quite a bit of fuel as well. Of course, that’s never happened. [p]
Once the ship’s energy falls below 25%, an emergency resupply ship would be automatically sent here, by the way. [p]
But we’ve never had that, the monthly resupplying is more than enough for us. [p]
#<font face="EarthOrbiter"<font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_angry.png" time=200 cross=false]
But if we keep such an idiot in our team, it might actually happen, who knows! [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 cross=false]
Ugh... [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 cross=false]
And if nobody confirms that we’re keeping up with Earth’s gravity, the ship will go into weightlessness mode. [l]Which isn’t the most comfortable, especially if you’re in the office or boarding deck. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
Fortunately, we realized and fixed this situation before it reached that point. [l]First time it happened, I remember seeing the office in the worst mess imaginable... [l]The chairs, the documents... [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_question.png" time=200 cross=false]
It’s quite a sophisticated and automated system, which is why it’s important to be careful. [l]
[chara_mod name="Nicola" storage="/chara/5/nicola_agressive.png" time=200 wait=false cross=false]
But Joshua doesn’t seem to understand how crucial that is. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_scream.png" time=200 cross=false]
I’m sorry. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_upset2.png" time=200 wait=false cross=false]
You’ll just end up doing it again anyway. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
Joshua. [l]It’s fine to make mistakes sometimes. [l]But remember: [l]everyone here is disposable. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_scared.png" time=200 cross=false]
...! [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Joshua turned pale. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
I’m kidding. [l]We have you here for a reason. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured_blush.png" time=200 cross=false]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Joshua let out a sigh of relief. [l]I guess it’s only fair to toy with him a little in exchange for what he did... [l]Especially since it’s apparently the third time. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png" time=200 cross=false]
While we’re at it, when will the next supply ship arrive? [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png" time=200 cross=false]
Five days, actually. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
Oh, already? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola.png" time=200 cross=false]
Good, you’ll see how it works soon enough then, Euphie. [l]I’ll explain more in due time, but basically, it’s just like ticking off what you want out of a christmas toy book! [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Sounds convenient... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png" time=200 cross=false]
Yep, but still a bit less sexy than getting your dream christmas present. [l]Usually it’s mostly just food and a change of clothes. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_angry.png" time=200 cross=false]
Joshua, don’t just stand there. [l]Please correct the gravity across the station already. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png" time=200 cross=false]
O-Oh, sorry. [p]
[chara_move  name="Joshua"  anim="true"  time="600"  effect="easeInQuad"  wait="true"  left="-451"  top="0"  width="495"  height="720"  ]
[playse storage=SoundEffects_Action/inside_spaceship.ogg loop=true clear=false layer=3]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Joshua hastily went back in the engineering room, and after some noise, I could feel my body gradually gaining some weight. [l][r][r]
It took much more time than in the Gravity Change Chamber, probably as a safety precaution. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[fadeoutse time=2000 buf=3]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" time=200 cross=false]
Oh, wait... [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Klaus once again checked his watch. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Euphie, you were supposed to visit this place with Nicola and Joshua, right? [p]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Oh, true. [l]What time is it? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
It’s 7:30. [l]It was all an accident, but I guess that got you to check out the engineering room. [p]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
That’s true. [p]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_hide  name="Joshua"  time="0"  wait="false"  pos_mode="false"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[bg storage=Backgrounds/bg03_elevators_front.png method=crossfade time=1000 wait=true]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
[wait time=1000]
[playse storage=SoundEffects_Action/elevator_up_outside.ogg loop=true clear=false layer=3]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
I’ll be in the cafeteria to get breakfast then. [l]Don’t forget that we need to meet each other near the dorms to do some exercise at 10, too. [l]Before that... [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola.png" time=200 cross=false]
We have to go and get breakfast. [l]Don’t worry about it, I’ll take good care of her! [p]
[fadeoutse time=2000 buf=3]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Good. [l]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=4]
Well then, I’ll be going. [p]
[chara_hide  name="Klaus"  time="1000"  wait="false"  pos_mode="true"]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color="#85e085"></font>
Klaus jumped in the elevator. [p]

[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=0]
[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png" time=200 cross=false]
Let’s go, then. [l]Joshua will probably be busy fixing the mess he’s made, so let’s go ahead towards the third floor. [p]
[playse storage=SoundEffects_Action/elevator_up_outside.ogg loop=true clear=false layer=3]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yeah, just wait for me a moment. [l]I’m gonna check this place out with Joshua before seeing what’s above. [p]
[freeimage layer=2]
[fadeoutse time=3000 buf=3]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral2.png" time=200 cross=false]
Oh, true. [l]Might as well do just that, since you’re already here. [l]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png" time=200 cross=false]
That’ll give me enough time to get you your watch! [l]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=4]
I’ll see you in our room when you’re done. [p]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Thanks. [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=1]
[chara_hide  name="Nicola"  time="1000"  wait="true"  pos_mode="true"]
[playse storage=BGS/elevator_up_outside.ogg loop=false clear=false layer=3]
[wait time=1000]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
Nicola took the second elevator, and went up. [l]I decided to check up on Joshua. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[fadeoutse time=2000 buf=3]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=true]
[chara_show  name="Joshua"  time="1000"  wait="true"  storage="chara/3/joshua_sleep_sigh.png"  width="495"  height="720"  left="0"  top="0"  reflect="false"]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Hey, Josh. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 cross=false]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=1]
Yo... [l]Sorry about all that. [l]Not cool, for your first night here. [p]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=3]
[image storage=default/EuphieSprites/euphie_normal_stressed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Don’t worry about it. [l]Not like I was having the greatest dream anyway... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png" time=200 cross=false]
Uh? [l]What dream? [p]
[image storage=default/EuphieSprites/euphie_normal_flustered.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Nevermind that. [l]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
I was just wondering, do you think you could do something about this? [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Hm? [l]What is this? [p]
[image storage=default/EuphieSprites/euphie_normal_sad_lookout.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
It used to be Nicola’s music box, but now it’s broken. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png" time=200 cross=false]
Oohhh. [l]Now that you mention it, I remember her having that around her neck all the time. [p]
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I was wondering if you could so something about it, if you’ve got the time, obviously? [l]Or maybe this isn’t your field of expertise... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 cross=false]
Hmm... [l]I need to check it out and see what’s wrong with it but I might be able to fix it up. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua.png" time=200 cross=false]
I didn’t really have much planned for the rest of the day anyway, so... [l]Maybe I’ll be done with it at the end of the day? [p]
[image storage=default/EuphieSprites/euphie_normal_happy.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
That’d be fantastic... [l]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Nicola seems really attached to it, and I’d love to find a way to put it back into its original form. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_smile.png" time=200 cross=false]
I feel ya. [l]It'd be a shame for such a pretty thing to stay broken like that. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"></font>
Joshua put the music box in one of his pockets. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[chara_mod name="Joshua" storage="/chara/3/joshua.png" time=200 cross=false]
Now we should go up and get some grub. [l]There’s really not much else to check out here. [p]
[fadeoutse time=2000 buf=3]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Okay. [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]

[_tb_end_tyrano_code]

[jump  storage="scene2part4eating_jogging.ks"  target=""  ]
