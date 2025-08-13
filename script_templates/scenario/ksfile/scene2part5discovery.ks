[_tb_system_call storage=system/_scene2part5discovery.ks]

[tb_start_tyrano_code]
[fadeoutbgm time=3000]
[chara_show  name="Klaus"  time="1000"  wait="true"  storage="chara/2/klaus.png"  width="495"  height="720"  left="0"  top="0"  reflect="false"]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=4]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Klaus, would you mind explaining how the training will go? [p]
[freeimage layer=2]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=3]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Of course. [l]But first of all, we have to decide who's going to be doing what. [p]
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I think Alexeï mentioned it yesterday. [l]There's someone who controls the ship, and someone else in their manual maneuvering suit, right? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" wait=true time=200 cross=false]
Let's shorten it down to MMS, or space suit for now. [l]You don't have to say its whole name. [l]But yes, that's it. [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
To be perfectly honest with you... [l]I'm unsure I'd be up to the task with the machinery, for now... [p]
[freeimage layer=2]
[fadeoutse time=2000 buf=3]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
I understand. [l]I'll take care of it then. [p]

[freeimage layer=1]
[layopt layer="message0" visible=false]

[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
[chara_hide  name="Klaus"  time="1000"  wait="true"  pos_mode="true"]
[bg storage=Backgrounds/bg02_corridor_C.png method=crossfade time=1000 wait=true]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
The elevator doors open, revealing the usual corridor with wide windows. [l][r][r]
[bg storage=hangarwindow.jpg method=crossfade time=1000 wait=true]
[playbgm storage="/music/05_-_A_Room_for_Space_-_juneji.ogg" ]
From here, you could see the boarding deck I descended from yesterday. [l]I actually didn't really see it for myself much, since the Gravity Change Room I went in had no windows. [l]Moreover, that was when I immediately got accosted by Klaus, and I couldn't just look back and have a peek, either. [l][r][r]The boarding deck wasn't far off  from the ones in space opera movies and video games. [p]
You could see the wide white GCC tube from the inside. [l]The color of it clearly clashed with the darker shade of the deck. [l]It looked out of place, but it's usefulness shouldn't be overlooked. [l]It lets incoming spaceships directly connect with the station, as if it was a staircase connecting a sea-ship to earth. [l][r][r]The spaceship I boarded in wasn't here anymore, and probably went back to earth. [l]No other ship could be seen, except for a small one, probably the microship. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[chara_show  name="Klaus"  time="1000"  wait="false"  storage="chara/2/klaus.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]
[bg storage=Backgrounds/bg02_corridor_C.png method=crossfade time=1000 wait=true]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Euphémia? [l]Please, if you would... [p]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Oops, sorry, I spaced out a little. [p]
[freeimage layer=2]
[chara_mod name="Klaus" storage="/chara/2/klaus_smile.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
I can understand. [p]The sight of space from here is quite something. [p]

[freeimage layer=1]
[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
[wait time=500]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
Klaus pressed a button on the wall, opening the door right next to it. [p]
[chara_hide  name="Klaus"  time="500"  wait="false"  pos_mode="false"]
[bg storage=changingroom.jpg method=crossfade time=1000 wait=true]
I follow him inside the unknown place. [l]It looked like a changing room. [l]There were a few lockers, benches, and two dressing rooms for privacy. [p]
The lockers were so big, they almost looked like doors leading somewhere else. [l]On the wide lockers, I could see the names of Klaus, Alexeï... [l]And Euphémia. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
So that's the changing room? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#ff8080"></font>
[chara_show  name="Klaus"  time="500"  wait="false"  storage="chara/2/klaus.png"  width="495"  height="720"  left="0"  top="0"  reflect="false" wait="true"]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
That's right. [p]
[freeimage layer=1]

[layopt layer="message0" visible=false]
[chara_hide_all time="500" wait="false"]
[bg storage=Backgrounds/bg5_lockers.png method=crossfade time=1000 wait=false]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I open the locker with my name on it. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
As you can see, there should be two different suits. [l]One of them is the Manual Maneuvering Suit, and the other is simpler, usually for light usage such as piloting the microship. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
The MMS came with quite a big helmet, while the lighter one was paired with a less intimidating one. [l]Guess I'll have to go with the MMS, since I'll be the one out in space. [l]I take the heavy suit with me, and go towards the changing room. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]

[bg storage=black.png method=crossfade time=1000 wait=true]
[wait time=2000]
[bg storage=changingroom.jpg method=crossfade time=500 wait=false]
[chara_show  name="Klaus"  time="500"  wait="false"  storage="chara/2/klaus_suit.png"  width="495"  height="720"  left="0"  top="0"  reflect="false"]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

As I go out changed, I see Klaus waiting for me in his own suit, holding his helmet. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Alright then, are you ready to go? [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
As if my brain sent me the chemicals too late, my stomach suddenly started hurting a bit. [l]In a few moments, I'll be up diving in space. [l]The thought of it brought me both anxiety and excitement. [l]It's something I've been dreaming of ever since I was very little, but it's still a stressful experience to imagine. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSpritesSuitNoHelmet/euphie_suit_nohelmet_flustered.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yeah... [l]I guess I'm ready. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_suit_closed.png" time=200 cross=false]
Don't "guess" it. [l]Are you truly ready or not? [l]If you're not, we can still- [p]
[image storage=default/EuphieSpritesSuitNoHelmet/euphie_suit_nohelmet_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I'm ready. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color=""></font>
[freeimage layer=1]
[layopt layer="message0" visible=false]
[chara_mod name="Klaus" storage="/chara/2/klaus_suit_smile.png" time=200 cross=false]

[current layer="message1"]
[layopt layer="message1" visible=true]

Sensing my determination, Klaus smiled. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Klaus" storage="/chara/2/klaus_suit.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Put your helmet on, then. [l]I'll check your equipment, and you'll check mine. [l]It's an important process, and it always has to be done before going out. [p]
[freeimage layer=1]

[layopt layer="message0" visible=false]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
[wait time=500]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]

[current layer="message1"]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
After making sure nothing was wrong... [l]Klaus pressed the button to open the gate leading to the GCC. [l]
[playse storage=SoundEffects_Action/door1.ogg loop=false clear=false layer=3]
[chara_hide_all time="500" wait="false"]
[bg storage=Backgrounds/bg02_corridor_A.png method=crossfade time=1000 wait=false]
We both enter the small white corridor, and after pressing a few buttons while explaining to me how the room works, [l]
[playse storage=BGS/inside_spaceship.ogg loop=false clear=false layer=4]
my body starts to feel lighter.[l] This suit is incredibly heavy. [l]Yet years ago, they weighed more than fifty kilograms. [l]Now, thanks to the huge jump in the progress of science and technology, they only weigh around thirty kilograms. [l][r][r]
[fadeoutse time=2000 buf=4]
This of course means that you need a trained body, and why the GCC process was different back then. [l]You couldn't even walk with one of these suits on. [p]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=5]
A sound rings, indicating that the gravity change process is done. [l]Instead of feeling heavy like an anvil, I feel just like I was down on earth. [l]
[playse storage=SoundEffects_Action/door1.ogg loop=false clear=false layer=1]

[layopt layer="message1" visible=false]
[bg storage=hangar.jpg method=crossfade time=1000 wait=true]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer="message1" visible=true]

The gate leading outside opens to the hangar and the pitch black starlit horizon. [l]My heart started pounding. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]

[chara_show  name="Klaus"  time="1000"  wait="true"  storage="chara/2/klaus_suit2.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Follow me. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I heard Klaus’ voice in a lower quality from the speakers of my helmet. [l]It caught me off guard. [l][r]
That's something I forgot to ask: [l]how does the communication line work? [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/Com_Klaus/klaus_cadre_suit2_closed_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Ahah, no use looking for any kind of button to speak. [p]It detects voice automatically. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...It's funny how technology seems to be easier and more accessible when you're doing things normal people can't even dream of doing. [p]


[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Laughing lightly, Klaus walks towards the microship while I follow him. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
How come we're not weightless here? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Oh, but we are. [l]Your suit just has magnetic properties. [l]And the room is made to attract it. [l]Alright, now show me your back. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[playse storage=SoundEffects_Action/rustling.ogg loop=false clear=false layer=1]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Once turned around, I could hear some rustling. [l]After Klaus told me it was done, I turned around and saw that a thick tube was placed on my back. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Ah, so that's the thing directly linked to the ship, right? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[image storage=default/Com_Klaus/klaus_cadre_suit2_closed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Correct. [l]Like a grappling hook, it retracts when necessary. [l]That makes it more economical and faster when you wish to get closer to the ship. [p]
And most importantly, it makes sure you don't just drift away. [l]It's not entirely necessary, but since it's your first time, I think this might be for the best. [p]
[freeimage layer=2]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Our communication and moves require concentration and synchronisation, which helps to build trust and cooperation between the one in the ship and the one in the MMS as well. [p]
That would make a great first training session. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[chara_hide  name="Klaus"  time="1000"  wait="false"  pos_mode="true"]

[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
[current layer="message1"]

#<font face="earthorbiter"><font color=""></font>
Klaus went to the far back of the ship. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
You can hold onto these bars if necessary. [l]I'll ask you to hold on to them for now, before we lift off. [p]
I'll explain to you how piloting works next time. [l]For now, I want you to focus on mastering the MMS. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Roger. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I take hold of my feet on the back of the ship, and grab the bars firmly with my hands. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
All good? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
All good. [p]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Then let's go. [p]
[playse storage=SoundEffects_Action/engine_stop.ogg loop=false clear=false layer=1]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
The ship starts moving. [l]There's no sound in space, but I can feel the ship moving by touching it, as if it vibrated. [l]Then slowly... [l]It starts to advance, as if sliding on the ground. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
The station here works as if it was on trails. [l]Of course, they're not visible, the ships here simply follow a common pattern of automated trajectories. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Can you not control it manually? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_cadre_suit2_closed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Of course you can. [l]It's just easier when every dull task is automated. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
The ship was now floating above the ground, gradually gaining more speed, until it finally emerged from the boarding deck. [l]
[bg storage=Backgrounds/bg00_space.png method=crossfade time=1000 wait=false]
The ship and I were now drifting in space. [l]Far enough from the station to feel a little bit overwhelming, but near enough to still feel secured. [l]I grip the bars firmly, as if letting go would make me fall. [l]But of course, no such thing happens in space. [l]The very notion of gravity is entirely different of what you're used to. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Everything alright? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yeah, I'm... [l]Good. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Nico/nico_com_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Command to space team, do you hear me? [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
What seemed to be Nicola's voice echoed in my helmet. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
Klaus to Command, I hear you. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
After a few seconds, I realized I should answer. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Euphémia to Command, I hear you! [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Nico/nicola_com_neutral2.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Good, then everything seems to be all set. [l]Alexeï, you haven't done the test. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Even though I couldn't hear Alexeï, I just knew he answered with a sigh. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Alex/alex_com.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Command to space team, it's Alexeï. [l]Do you copy? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Euphémia to Alexeï, I hear you. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Klaus to Alexeï, I hear you. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Nico/nicola_com_neutral.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Alright then, time to get a bit further away from the station. [l]That alright with you, Euphie? [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I grip the bars firmly, to make sure not to let go. [l]Though everything should be safe, it's still a stressful experience. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yes, I'm fine. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Don't wear yourself out. [l]Once you feel comfortable, you'll want to get out of the station every day. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Klaus drives the microship towards the top of the station. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/klaus_cadre_suit2_closed_smile.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
The view of the observatory from up top is quite something. [l]Have a look! [p]

[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

The observatory looked like a giant glass dome. [l]I could even see inside, and see the telescope, and elevator. [l][r][r]The dome was so clear, it felt like it could break with a simple tap to its surface. [l]Of course, it couldn't. [l]Technology was just advanced enough for humanity to create something even stronger than diamond, while still looking entirely transparent. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
How about letting go, Euphémia? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Uh? [p]
[freeimage layer=2]
[fadeoutbgm time=3000]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_cadre_suit2_closed_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
You're not thinking of just standing there behind the ship, right? [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[layopt layer="message0" visible=false]
[bg storage=black.png method=crossfade time=2000 wait=true]
[wait time=1000]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
In your mind, you're prepared, and you know  that. [l]But experiencing it is an entirely different thing. [l]Your body and mind are both used to life on earth, but of course, it's nothing like that in space. [l][r][r]I've done this before... [l][r]I've done this before, and yet... [l][r]I'm scared. [l]
[bg storage=/Backgrounds/bg00_space.png method=crossfade time=1000 wait=false]

#<font face="earthorbiter"><font color=""></font>
I spring my legs towards the station, still holding tight, and... [l]
[playbgm storage="/Music/03_-_Space_Confessional_-_juneji.ogg" ]
I push myself up, finally letting go. [l]My body drifted away from the spaceship, leaving a small white trail behind, as if it was my umbilical cord. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Good job. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
It's so weird. [l]It's like the entire station feels secluded, claustrophobic... [l]but once you're outside, in the density of space... [p]Suddenly, it's overwhelming. [l]It's like only these two extremes exist here. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_cadre_suit2_closed_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
We're all earthlings, that's a normal feeling. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Suddenly, I realize how lucky we are. [l]We've been living our entire lives in a safe place, with air, water, and shelter. [l]We’ve yet to find a planet like ours, where life can exist, despite such a large universe. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Try using your suit's features. [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Steel arms extended from the heavy machinery on my back. [l]At the tip of those, there were grips for my hands, so I could control the nitrogen propulsion mechanism from them. [l]They control just like a pair of joysticks. [l]I propel myself up, so I can get a better view of the station from above, with Klaus leading the ship closer to me. [l]Minutes passed, passed, and passed... [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Enjoying yourself? [l]Think you want to try driving the microship now? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yeah, I think I might be ready now. 
[freeimage layer=2]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[l]Let's head- [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[freeimage layer=1]
[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[stopbgm  time="0"]
[wait  time="100"]
[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Action/heartbeat.ogg"]
[layermode mode="difference"  color="0xffffff"  time="500"  wait="false"  graphic="Pictures/kodamacometst.jpg"]
[bg time="500" method="puffIn" storage="CG_Comet/kodamacometst.jpg"]
[free_layermode time="500" wait="true"]
[bg time="1000" method="crossfade" storage="Backgrounds/bg00_space.png"]
[wait  time="100"]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Uh?[p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse  volume="70"  time="1000"  buf="0"  storage="SoundEffects_Action/static.ogg"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic1.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_345"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic2.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_346"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic3.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_347"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic4.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_348"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic1.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_349"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic2.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_350"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic3.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_351"  ]
[tb_image_show  time="100"  storage="default/CG/kodamacometstatic4.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_352"  ]
[tb_image_hide  time="0"  ]
[playbgm   time="1000"  loop="true"  storage="Music/07_-_Phantoms_-_postblankvoid.ogg"  ]


[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Suddenly, I feel something travelling through my entire body. [l]As if something struck me, making me flinch. [l]I look around, looking for the source of it. [l]But... [l]There is nothing. [l][r][r]I think I can hear Klaus' voice, but it's so distant. [l]I can't concentrate on him as I'm still looking for the cause of this disconnection I'm feeling. [p]
[layermode  mode="overlay"  color="0xffffff"  time="2000"  wait="false"  graphic="Pictures/bg00_space2.png"  ]
I realize I can't even move my body anymore. [l]My will, my thoughts, my soul... [l]Everything is here, feels consistent... [l]Yet my limbs don't follow what I order them to do. [l]It feels uncomfortable. [l][r][r]
[layermode  mode="overlay"  color="0xffffff"  time="1"  wait="true"  graphic="Pictures/bg00_space2.png"  ]
[layermode  mode="color"  color="0xffffff"  time="2000"  wait="false"  graphic="Pictures/kodamacometst.jpg"  ]
Images penetrate my mind, as if they wanted to print something in my memory. [l]I can only succumb to it, without having any control over it. [l]If this is what death feels like, I don't want to die. [l][r][r]
[layermode  mode="color"  color="0xffffff"  time="1"  wait="true"  graphic="Pictures/kodamacometst.jpg"  ]
All I can think about... [l]is... [l]this thing. [p]
[free_layermode  time="1500"  wait="true"  ]
[layermode  mode="hard-light"  color="0xffffff"  time="1000"  wait="true"  graphic="Pictures/kodamacometst.jpg"  ]
My mind pictures something unknown, of a specific shape, within the black sea of white lights I'm drifting in. [l]The picture in my mind is still blurry. [l]Little by little, it feels like it gets sharper and sharper, but still feels unclear. [p]
[layermode  mode="hard-light"  color="0xffffff"  time="1"  wait="true"  graphic="Pictures/kodamacometst.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  loop="true"  storage="BGS/eerie_sound.ogg"  ]
[free_layermode  time="1000"  wait="true"  ]
[layermode  mode="hue"  color="0xeb4141"  time="1000"  wait="true"  graphic="Pictures/kodamacometst.jpg"  ]
I don't know where it is, but I know it's there. [l]Far away, distant, light-years away from me... [l]But I can sense it. [l][r][r]Is it trying to contact me? [l][r]To communicate? [l][r]Is this what this buzzing sound is? [l][r]Is it trying to speak? [p]
[layermode  mode="hue"  color="0xeb4141"  time="1"  wait="true"  graphic="Pictures/kodamacometst.jpg"  ]
[stopse  time="250"  buf="0"  fadeout="false"  ]
[playse  volume="25"  time="1000"  buf="0"  loop="true"  storage="BGS/long_static.ogg"  ]
The buzzing sound turns into loud static noise, infecting my consciousness, attacking my head. [l]I can do nothing but endure it until it's gone. [l][r][r]
[playse  volume="25"  time="1000"  buf="0"  loop="true"  storage="BGS/screaming.ogg"  ]
Are those... [l]people screaming? [l][r][r]For what reason? [l]Is it all because of this "thing"? [l][r][r]It's like my brain's overflowing with ideas and thoughts I cannot control. [p]
[layermode  mode="color-burn"  color="0xffffff"  time="1500"  wait="true"  graphic="Pictures/redswirl.png"  ]
[bg  time="1000"  method="fadeIn"  storage="CG_Comet/kodamacometstatic1.jpg"]
Am I just a vessel to contain information from this "thing"? [p]But it's too much. [l]Numbers, then letters I've never ever seen start popping up in my mind, as if the "thing" engraved memories directly in me like a storage device. [l][r][r]About world heritage. [l][r]About society. [l][r]About history. [l][r]About the future. [p]Weirdly enough, nothing about nature. [l]Everything it's trying to imprint in me, it's about humanity. [l]Why does someone so far away from us know so much about us? [p]
[layermode  mode="color-burn"  color="0xffffff"  time="1"  wait="true"  graphic="Pictures/redswirl.png"  ]
[free_layermode  time="1000"  wait="true"  ]
[layermode  mode="color"  color="0xeb4141"  time="1000"  wait="true"  graphic="Pictures/bg00_space2.png"  ]
What do I care. [l][r]It just hurts. [l][r]I can't take any more of it. [l][r]I don't want to know everything. [l][r]We're humans precisely because we're curious. [p]
[layermode  mode="color"  color="0xeb4141"  time="1"  wait="true"  graphic="Pictures/bg00_space2.png"  ]
This is why we still research and learn, even thousands of years later. [l][r]Humans cannot reach for this status of perfect knowledge. [l][r]No-one lives long enough for that to happen. [l][r]Anyone who tries to know everything will burn their humanity down until they're just robots processing information. [p]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[free_layermode  time="1000"  wait="true"  ]
[layermode  mode="color"  color="0xeb4141"  time="1000"  wait="true"  graphic="Pictures/kodamacometstaticred.jpg"  ]
I've always hated those who tried to become as such. [l]And now, it's like I'm becoming one of these puppets... [l]because of this unknown entity. [l][r]I don't want to... [l][r]I am my own person... [l][r]My own entity... [l][r][r]I have to fight back, somehow... [l]Find a way to break this link with it, before I get utterly destroyed from the inside... [p]
[layermode  mode="color"  color="0xeb4141"  time="1"  wait="true"  graphic="Pictures/kodamacometstaticred.jpg"  ]
[bg  time="100"  method="puffIn"  storage="black.png" wait=true]
[free_layermode  time="1000"  wait="true"  ]
I regain control of my head. [l]the rest of my body still feels vivid and uncontrollable, but I can now move my head. [l]I look around, looking for the source of all this. [l]I turn my head upwards, and now, the picture finally gets clearer. [l][r][r]
[free_layermode  time="10"  wait="true"  ]
[stopbgm  time="250"  fadeout="true"  ]
It's... [p]
[playse  volume="100"  time="1500"  buf="0"  storage="SoundEffects_Action/eerie_shock.ogg"  ]
[wait  time="1360"  ]
[free_layermode  time="1"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="hangar.jpg" wait=true]
[chara_show  name="Klaus"  time="0"  wait="false"  storage="chara/2/klaus_suit2_angry2.png"  width="495"  height="720"  left="609"  top="0"  reflect="false"  ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/Com_Klaus/klaus_com_suit_scream.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
EUPHEMIA! [p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[free_layermode  time="200"  wait="false"  ]
[chara_mod name="Klaus" storage="/chara/2/klaus_suit2_angry.png" wait=true time=200 cross=false]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Suddenly, I'm back at the port. [l]My body feels warmer, as if blood finally restarted flowing through my veins after being blocked. [l]My eyesight is still fixed to the infinite horizon, but I can't picture the "thing" anymore. [l]Yet I keep looking. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]

[chara_mod name="Klaus" storage="/chara/2/klaus_suit2_angry2.png" wait=true time=200 cross=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_cadre_angry2_tilt.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Are you alright? [l]What happened?! [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Alexeï... [l]Please record in which direction I'm looking at. [p]
[freeimage layer=2]
[chara_show  name="Alexei"  time="1000"  wait="true"  storage="chara/4/alex_suit.png"  width="495"  height="720"  left="101"  top="0"  reflect="false"  ]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I say without looking elsewhere. [l]Without looking, for some reason, I could feel that Alexeï was right besides me. [l]No-one answers, and a dead silence occurred while Alexeï seemed to be typing something on his arm. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Alex/alex_com.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
It's done. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Klaus/klaus_com_suit_scream.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_suit2_angry.png" wait=true time=200 cross=false]
Euphémia. [l]What happened there? [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/Com_Alex/alex_com.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
She seems fine. [l]Let's discuss this inside. [p]
[freeimage layer=2]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=5]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]Alright. [p]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Klaus helps me get up, and tries to help me walk, but I show him I'm fine. [l]
[chara_hide_all time="888" wait="true"]
[bg storage=black.png method=crossfade time=1500 wait=true]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[playse storage=SoundEffects_Action/footsteps.ogg loop=false clear=false layer=0 volume=75]
Without exchanging a single word, we change back into our clothes, and head into the elevator. [l]
[fadeoutse time=250 buf=0]
Klaus presses the button for the third floor, for the command deck. [l]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1 volume=100]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2 volume=100]
[bg storage=Backgrounds/bg10_command_deck.png method=crossfade time=1000 wait=false]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

We arrive, but I can't find Nicola anywhere. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Where is she? [p]
[freeimage layer=2]
[layopt layer="message0" visible=false]
[playbgm storage="/music/Gazing_from_orbit.ogg"]
[chara_show  name="Klaus"  time="500"  wait="true"  storage="chara/2/klaus.png"  width="495"  height="720"  left="188"  top="0"  reflect="false"]
[layopt layer="message0" visible=true]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Nicola? [l]I thought she would be here. [p]
[chara_show  name="Alexei"  time="500"  wait="true"  storage="chara/4/alex.png"  width="495"  height="720"  left="590"  top="0"  reflect="false"]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Where did she run off to? [l]I told her that she should stay there, since I left my post to come and help you. [p]
#<font face="earthorbiter"><font color="#cc66ff"></font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png"  wait="true" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
She probably went to the observatory once she realized you were fine. [p]
#<font face="earthorbiter"><font color="#cc66ff"></font>
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png"  wait="true" time=200 cross=false]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
Alexeï seemed to be attempting to hide his frustration. [l]He had gone all the way down to the deck and worn his Manual Maneuvering Suit just for the sake of helping me. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Oh, thanks, Alexeï. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#ff8080"></font>
[chara_mod name="Alexei" storage="/chara/4/alex_confused.png" time=200 wait="true" cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Uh? [p]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
For coming out of the station to see what was wrong. [l]Really appreciate the initiative. [p]
[freeimage layer=2]
[chara_mod name="Alexei" storage="/chara/4/alex_embarassed.png" time=200 wait="true" cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
... [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Alexeï seemed embarrassed. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Alexei" storage="/chara/4/alex.png" time=200 wait="true" cross=false]

#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
...[l]Of course I had to come and help you. [l]
[stopbgm]
You were out for twenty minutes. [p]
[image storage=default/EuphieSprites/euphie_normal_shocked_teeth.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/heartbeat.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]What? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" time=200 wait="true" cross=false]
Yes, Euphie. [p]You didn't answer for minutes. [p]
[playbgm  time="3000"  loop="true"  storage="Music/Gazing_from_orbit.ogg"  fadein="true"  ]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
That can't be right. [l]I could swear I was only out for a few seconds. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]Really? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 wait="true" cross=false]
Yes, really. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]I'm sorry. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 wait="true" cross=false]
Don't apologize. [l]What matters is that you're fine. [p]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" time=200 wait="true" cross=false]
But we'd like some explanations. [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I... [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I try to come up with something, but this experience was so surreal I don't even know what to say. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Don't make fun of me, but... [l]It's like I was... [l]connected with space. [p]
[chara_mod name="Alexei" storage="/chara/4/alex.png" time=200 wait="true" cross=false]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
I could hear you, Klaus, but it's like everything you said was mumbled.[p]
Like I didn't understand what you were trying to say, and I was too concentrated on something else... [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Klaus seemed confused, but Alexeï looked at me directly in the eye, as if he knew I was serious. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I'm not going to bother you too much with my nonsense. [l]I'm fine now, don't worry too much. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Good. [l]But don't push yourself. [p]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I won't. [l]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Alexeï, can you give me the coordinates I asked you to write down? [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_thinking.png" time=200 wait="true" cross=false]
I'll send them to you via message. [l]You should have an application for that as well. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color=""></font>
After a short moment, I receive a notification containing the message from him, just as he said. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Thank you. [l]I'll be seeing Nicola, then. [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
[chara_hide_all time="1000" wait="true"]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=false]

[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
I get back in the elevator, and head towards the observatory one floor above. [l][r][r]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=3]
What could this all mean? [l]Was I simply hallucinating...? [l]But I did feel something. [l]I know that where I looked, something was there. [l]
[fadeoutse time=500 buf=3]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
I'm sure of it. [l]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
[layopt layer="message1" visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[bg storage=Backgrounds/bg09_observatory.png method=crossfade time=1000 wait=false]
[chara_show  name="Nicola"  time="1500"  wait="true"  storage="chara/5/nicola_neutral.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[layopt layer="message1" visible=true]
The elevator doors open. [l]I can see Nicola, using the telescope. [l]I approach her and call for her. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png" time=200 wait="true" cross=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Hey, Euphie! [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
She grabs my shoulders, with a worried expression on her face. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_determined.png" time=200 wait="true" cross=false]
You okay there, honey? [p]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yes, sorry I worried you guys... [l]I'm fine now. [p]
[freeimage layer=2]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting.png" time=200 wait="true cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
What was it that made you go bonkers? [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
She asked as she went back to programming and using the telescope. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
It's like I've... [l]"seen" something, but couldn't see it with my own eyes. [p]
[freeimage layer=2]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" wait="true time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Well I'm not gonna make fun of you, since I don't think you're  the kind of girl to take some crazy drug before going star diving. [l]I'll trust you on this. [p]
[image storage=default/EuphieSprites/euphie_thinking_embarassed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Uh, thanks... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral2.png" wait="true time=200 cross=false]
So, what is it that made you want to see me? [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color=""></font>
I turn on my watch, and access Alexeï's message to show it to her. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Could you check if there's anything towards this horizon? [p]
[freeimage layer=2]
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
...[l]What do you think is going on here? [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
I go silent for an instant. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
When I was... [l]"spaced out", I felt like something was wrong in this direction. [l]Like I knew something was there, I could sense it, but not see it with my eyes open. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_frown.png" time=200 wait="true" cross=false]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
But for some reason, Klaus didn't seem to sense anything wrong. [l]Apparently I wasn’t responding for minutes, but to me, it barely felt like a few seconds. [p]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
As if the time I've spent there, motionless, was completely robbed from me... [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Nicola, just as the others, paid attention to me while I explained the situation to her. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
It's alright. [l]You're back now. [l]I'll take care of that thing you want me to check out. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
She sat back in front of the telescope. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_open.png" wait="true time=200 cross=false]
Go rest for now, Euphie. [l]I'll take care of it. [l]I'll tell you if I find anything. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
You sure you don't need my help? [p]
[freeimage layer=2]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Yep, sure. [l]Now get some sleep. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]

[chara_hide_all time="1000" wait="false"]
[bg storage=black.png method=crossfade time=1500 wait=true]

[fadeoutbgm time=3000]

#<font face="earthorbiter"><font color=""></font>
[layopt layer="message1" visible=true]
I don't answer to avoid distracting her. [l]I accept her request and decide to head back to my dorm... [l]And let my body fall down on my bed. [l]In barely a few seconds, I fall asleep. [p]

[_tb_end_tyrano_code]

[jump  storage="scene2part6bridge.ks"  target=""  ]
