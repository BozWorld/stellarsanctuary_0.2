[_tb_system_call storage=system/_scene3part1meteorshower.ks]

[tb_hide_message_window  ]
[cm  ]
[playse  volume="70"  time="1000"  buf="0"  storage="SoundEffects_Menu/chapter.ogg"  ]
[save_img  storage="Chapters/chapter3.png"  ]
[tb_image_show  time="1000"  storage="default/Chapters/chapter_3_begin.png"  width="1280"  height="720"  name="img_4"  ]
[tb_ptext_show  x="217"  y="344"  size="100"  color="0xf2f2f2"  time="2000"  text="Shooting&nbsp;Star"  face="earthorbiter"  edge="0x050505"  shadow="undefined"  anim="true"  fadeout="true"  wait="false"  in_effect="fadeInLeft"  out_effect="fadeOutRight"  ]
[wait  time="2500"  ]
[tb_image_hide  time="1000"  ]
[wait  time="2000"  ]
[tb_start_tyrano_code]
[playse storage=SoundEffects_Action/thud1.ogg loop=false clear=false layer=1]
[wait time=1000]

[tb_show_message_window ]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
My consciousness returns slightly, but it's still not enough to wake me up from my fatigue. [l]...I wonder what time it is. [p]
[playse storage=SoundEffects_Action/thud2.ogg loop=false clear=false layer=2]
[wait time=500]
[playse storage=SoundEffects_Action/thud3.ogg loop=false clear=false layer=3]
[wait time=500]
I can't really tell if I'm still asleep or not. [p]I'm too tired to move my body. [p]Maybe I'll sleep some more while I still can...[p]
[playse storage=SoundEffects_Action/thud2.ogg loop=false clear=false layer=2]
[wait time=500]
[playse storage=SoundEffects_Action/thud1.ogg loop=false clear=false layer=3]
[wait time=500]
I can't even tell if these noises I hear are straight out of my imagination or a dream... [p]
[playse storage=SoundEffects_Action/thud3.ogg loop=false clear=false layer=2]
[wait time=200]
[playse storage=SoundEffects_Action/thud1.ogg loop=false clear=false layer=3]
[wait time=600]
[playse storage=SoundEffects_Action/thud3.ogg loop=false clear=false layer=4]
[wait time=1500]
[playse storage=BGS/meteorshower.ogg loop=true clear=false layer=5]
...[l]Or reality? [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[bg storage=Backgrounds/bg07_dorm1.png method=crossfade time=1000 wait=true]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

I open my eyes. [l]A periodic noise of some faint metallic rustling can be heard. [l]This... [l]Does not sound natural at all. [l]My body still feels weak and tired, but there's no way for me to extend my sleep time. [p]
[playse storage=SoundEffects_Action/rustling_clothes.ogg loop=false clear=false layer=1]
I get up, and quickly grab my new watch. [l]
[playse storage=BGS/ringtone.ogg loop=true clear=false layer=2]
As I tap on Klaus' profile to call him, I change into my clothes as to not waste any time. [l]
However, the ringing goes unanswered. [l]All the answer I got was the sound of something periodically hitting the station. [l][r]
[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=3]
[fadeoutse time=0 buf=2]

[current layer="message0"]
[layopt layer="message1" visible=false]

[bg storage=Backgrounds/bg02_corridor_C.png method=crossfade time=1000 wait=true]

[current layer="message1"]
[layopt layer="message1" visible=true]

I grab my watch back, and step out of the room, looking for anyone that could answer my questions. [l]

[stopse]
[playse storage=BGS/meteorshower.ogg loop=true clear=false layer=5]

[current layer="message0"]
[layopt layer="message1" visible=false]

[chara_show  name="Joshua"  time="500"  wait="true"  storage="chara/3/joshua_flustured.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[current layer="message1"]
[layopt layer="message1" visible=true]

In front of the elevator, I could see Joshua. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_shocked.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Joshua! [l]What's going on?! [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Euphie! [l]Glad you're here. [l]I have no idea what the hell is happening. [l]Have you checked outside?! [p]

[freeimage layer=1]
[layopt layer="message0" visible=false]

[stopse]
[chara_hide_all time="500" wait="false"]
[bg storage=Backgrounds/bg12_zoom_earth_window.png method=crossfade time=1000 wait=true]
[wait time=2000]
[playbgm storage="/music/10_-_Petrified_-_postblankvoid.ogg" ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="EarthOrbiter"<font color=""></font>
I look out from the huge windows in the corridor. [l]I could see shallow marks of impact at irregular places. [l]I could see droplets of things falling down on us... [l]They were small comet chunks. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_shocked_teeth.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
What... [l]The... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
I know, right?! [l]How come you guys didn't realize this was going to happen! [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
I was about to violently shut him down, but I knew we'd just be wasting time arguing. [l]In most cases, meteor showers happen down on earth when cosmic debris enters the Earth's atmosphere. [l]Which is why it's so unusual to see one happen here, out of the atmosphere. [l]In reality, this shouldn't even happen. [l]It looks like the comet bits are directly aimed here, on this station. [l]This was a phenomena I couldn't even explain myself. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
This... [l]Isn't normal. [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
Joshua did not answer. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[bg storage=Backgrounds/bg03_elevators_front.png method=crossfade time=500 wait=false]
[chara_show  name="Joshua"  time="700"  wait="false"  storage="chara/3/joshua_neutral.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[playse storage=BGS/elevator_up_outside.ogg loop=true clear=false layer=3]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
We don't have time for that! [l]We have to gather the others. [l]Have you contacted them already? [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking_sweat.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
No, I woke up just now, just like you. [l]I checked the cafeteria, but no-one's there. [l]Everyone else might already be upstairs. [l]I already called the elevator. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I look up the elevator doors, to check where the elevators were at right now. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Joshua, there are two elevators in this station, right..? [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Yeah, speaking of which, looks like the second elevator is taking a while to co- [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 cross=false]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Seems like Joshua noticed it too. [l]The left elevator's dial told us it was coming our way alright, but the dial for the right one... [l]didn't show anything. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Joshua" storage="/chara/3/joshua_thinking_sweat.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
That's not good. [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
What does it mean? [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
It's unavailable... [l]but I don't know why. [l]We used it just yesterday. [p]
[image storage=default/EuphieSprites/euphie_normal_stressed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
This is just getting worse... [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[fadeoutse time=2000 buf=3]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=1]
The elevator finally opens. [l]
[playse storage=SoundEffects_Action/footsteps_light.ogg loop=false clear=false layer=2]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=true]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=4]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=5]
We get in, and head towards the second floor. [p]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=3]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Wait, that's weird... [p]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
What? [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
The elevator came from the lower floors. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
So what? [l]Wasn't it you? [l]There's two elevators, how is that surprising? [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 cross=false]
[fadeoutse time=2000 buf=3]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
I don't know, probably. [l]I can't remember. [l]Nevermind. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[bg storage=Backgrounds/bg03_elevators_front.png method=crossfade time=500 wait=false]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
[chara_show  name="Alexei"  time="500"  wait="false"  storage="chara/4/alex.png"  width="495"  height="720"  left="800"  top="0"  reflect="false"]
[chara_show  name="Klaus"  time="500"  wait="true"  storage="chara/2/klaus.png"  width="495"  height="720"  left="100"  top="0"  reflect="false"]
The elevator doors open once again, and we're greeted by Klaus and Alexeï. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Klaus" storage="/chara/2/klaus_wary_normal.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Joshua! [l]What's going on with the elevator?! [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
I don't know! [l]I'll have to check it out later on. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Euphémia, wasn't Nicola with you? [p]
[image storage=default/EuphieSprites/euphie_normal_stressed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
No, she never came back to sleep. [l]I'd assume she's still in the observatory, or fell asleep there. [p]
[freeimage layer=2]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
I see. [l]We have to notify GAAS immediately. [l]This meteor shower makes no sense, and I hope the structure isn't damaged. [p]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Right. [p]
[freeimage layer=2]

[freeimage layer=1]
[layopt layer="message0" visible=false]

[playse storage=SoundEffects_Action/beep1.ogg wait=true loop=false clear=false layer=1]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=1]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=750 wait=true]

[current layer="message1"]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color=""></font>
We all get in the tight elevator, with Klaus pressing the button for the third floor. [p]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=3]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Klaus" storage="/chara/2/klaus_angry.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#cc66ff">Klaus</font>
I worry about the station. [l]Maybe the elevator's problem comes from it. [p]
[chara_mod name="Alexei" storage="/chara/4/alex_thinking_shocked.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Makes you wonder in what kind of shit we could get in if none of them worked. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
That's why we've got two in the first place, both through different energy sources. [p]
[freeimage layer=1]

[layopt layer="message0" visible=false]
[fadeoutse time=2000 buf=3]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1 wait=true]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=1]
[bg storage=Backgrounds/bg10_command_deck.png method=crossfade time=750 wait=true]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
We step out of the elevator, and all rush around the wide windows to check on the comet shower. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Looks like it’s calmed down. [p]
[fadeoutbgm time=3000]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
The hard frequent noise of the comets colliding with the station came at a stop. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Alexei" storage="/chara/4/alex_thinking_shocked.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Klaus. [p]I'm trying to patch us through to GAAS, but... [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
Alexeï seemed concerned. [p]
[layopt layer="message1" visible=false]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
[chara_move  name="Klaus"  anim="true"  time="800"  effect="easeInQuad"  wait="true"  left="570"  top="0"  width="495"  height="720"  ]
[layopt layer="message1" visible=true]
Klaus joins him on the computer he was on. [l]
[chara_mod name="Klaus" storage="/chara/2/klaus_sweat.png" time=200 cross=false]
Klaus' face twisted into a wry expression. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
...[l]The servers aren't responding. [p]
[playbgm storage="/music/09_-_Non_Pilot_Journey_-_juneji.ogg" ]
[image storage=default/EuphieSprites/euphie_normal_shocked_teeth.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
What? [p]
[freeimage layer=2]
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking_sweat.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Shit, seems like even the servers got damaged in some way. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
Silence began to fill the boarding deck. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
We can't contact them? [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
No. [p]
[image storage=default/EuphieSprites/euphie_normal_stressed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...I'm guessing you've tried the emergency line? [p]
[freeimage layer=2]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Yes, but even that seems to be ineffective. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse storage=SoundEffects_Action/slam_desk.ogg loop=false clear=false layer=1]
[chara_mod name="Alexei" storage="/chara/4/alex_stare.png" time=200 cross=false]

[layopt layer="message1" visible=true]
#<font face="EarthOrbiter"<font color=""></font>
Alexeï slammed his hand down on the desk. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
What's the goddamn point of an emergency line you can't use?! [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
Klaus ignored his outburst. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Euphémia, you'll come with me outside to check on the station. [l]Just from the impact on the reinforced windows, the damage might be worse than we think. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Alright. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Joshua, you'll go down and see whatever is wrong with the servers, and the elevator while you're at it. [l]Keep yourself on line, we might need you. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Okay. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Alexeï, you'll stay here and supervise the operation. [p]
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
...Fine. [p]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[chara_hide_all time="888" wait="false"]
[bg storage=black.png method=crossfade time=1500 wait=true]

[layopt layer="message1" visible=true]
#<font face="EarthOrbiter"<font color=""></font>
And so, the excursion began. [l]Just like yesterday, Klaus was the one piloting, and I was the one out in my suit. [l]The damage done was... [l]Even worse than anticipated. [l]Most parts of the station had clearly been barraged with the comet, so much so  that it looked like a ship about to sink. [p]The worst part was the lower floors. [l]The server room was completely deformed, and the storage room wasn't looking good either. [l]Klaus called Joshua, warning him about the possible dangers of the room. [l]Unable to fix or do anything from the outside, we decided to head back. [p]

[layopt layer="message1" visible=false]
[bg storage=Backgrounds/bg10_command_deck.png method=crossfade time=1000 wait=false]
[wait time=200]
[chara_show  name="Klaus"  time="800"  wait="true"  storage="chara/2/klaus.png"  width="495"  height="720"  left="200"  top="0"  reflect="false"]
[chara_show  name="Alexei"  time="800"  wait="true"  storage="chara/4/alex.png"  width="495"  height="720"  left="500"  top="0"  reflect="false"]
[layopt layer="message1" visible=true]
Alexeï, Klaus and I were gathered on the bridge. [l]
[playse storage=SoundEffects_Action/door_soft.ogg loop=false clear=false layer=1]
[chara_show  name="Joshua"  time="800"  wait="true"  storage="chara/3/joshua_thinking_sweat.png"  width="495"  height="720"  left="800"  top="0"  reflect="false"]
The elevator opened and Joshua came to us, looking perplexed. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Still nothing? [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
...[l]No... [l]Because the servers themselves were trashed. [p]
[chara_mod name="Alexei" storage="/chara/4/alex_confused.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Trashed? [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking_sweat.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
By someone. [l]This is clearly no accident. [l]They've been deliberately destroyed by a person. [l]Wires cut, batteries exploded... [l]This makes no damn sense. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Once again, the room was soaked in silence. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Klaus" storage="/chara/2/klaus_angry.png" time=200 cross=false]
[chara_move  name="Klaus"  anim="true"  time="300"  effect="easeInQuad"  wait="true"  left="350"  top="0"  width="495"  height="720"  ]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Joshua, this isn't possible. [l]
[chara_mod name="Joshua" storage="/chara/3/joshua_angry.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
I know. [l]Who the hell would try to do that. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_sweat.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
No, I mean... [l]Only you have access to it. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
Everyone's eyes darted towards Joshua, asking for an answer. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 cross=false]
That’s normally how it is, yeah. [l]But that’s only if I really was the only one able to go in. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
What? [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_angry.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
I didn't even need to swipe my card to go check on the server. [l]The door was wide open. I've checked the security logs. [p]The lower doors were opened since last night. [l]Anyone could have entered, and not just me. [p]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
Everyone couldn't believe that. [l]But they knew Joshua wasn't lying. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Joshua" storage="/chara/3/joshua_thinking_sweat.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Even then... [l]There's no reason to just go and do that. [p]
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Is there, really. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_angry.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Alexeï, what the hell?! [p]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_closed.png" time=200 cross=false]
This entire thing makes no sense. I'm out of here. [p]
[playse storage=SoundEffects_Action/footsteps_light.ogg loop=false clear=false layer=1]
[chara_hide  name="Alexei"  time="1000"  wait="true"  pos_mode="false"]
[chara_move  name="Klaus"  anim="true"  time="300"  effect="easeInQuad"  wait="true"  left="590"  top="0"  width="495"  height="720"  ]
[chara_mod name="Klaus" storage="/chara/2/klaus_angry2.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Alexeï! [l]Come back here! [p]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]Nicola still isn't here. [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=1]
[chara_move  name="Klaus"  anim="true"  time="300"  effect="easeInQuad"  wait="true"  left="250"  top="0"  width="495"  height="720"  ]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 cross=false]

#<font face="earthorbiter"><font color=""></font>
As Alexeï called the elevator, Joshua and Klaus looked at me, concerned. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
She did spend the entire night awake. [l]Is it necessary to mix her up in the situation? [p]
[freeimage layer=2]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
This situation is too grave for her not to be involved. [l]I know it's hard but she needs to help us. [l]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
Alexeï, did you- [p]
[chara_show  name="Alexei"  time="1000"  wait="true"  storage="chara/4/alex_lookout.png"  width="495"  height="720"  left="1000"  top="0"  reflect="false"]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
I tried to call her. [l]Four times to be exact. [l]Still didn't answer. [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Mmh. [p]
[freeimage layer=2]
[chara_mod name="Alexei" storage="/chara/4/alex.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
I'm going back to my office to check on this shit. [l]Going to try and reach GAAS, somehow. [p]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=1]
[chara_hide  name="Alexei"  time="1000"  wait="false"  pos_mode="false"]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

Alexeï answered him before the elevator gates closed. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
...[l]Somehow? [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]What do we do now? [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Joshua, I want you to go with me to the lower floors to explain and show me everything you know. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Fine. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Euphémia, please check up on Nicola, this is starting to worry me. [l]I'm sure Alexeï was too selfish to check up on her, so go in his stead. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Okay. [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="EarthOrbiter"<font color=""></font>
I took the only remaining elevator up to the observatory. [l]However, it stopped on the second floor beforehand. [l]
[chara_show  name="Klaus"  time="1000"  wait="true"  storage="chara/4/alex.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]
The doors open, with Alexeï standing in front of them. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Alex? [p]
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" time=200 cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
I need something to eat. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Sorry, I'm on my way to the observatory. [l]This might take a while. [p]
[freeimage layer=2]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
When there’s only one elevator left to use, it becomes much more annoying and trickier to navigate through the base. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
It's fine, I needed to ask Nicola some questions anyway. [l]I'll go with you. [p]

[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=5]
[_tb_end_tyrano_code]

