[_tb_system_call storage=system/_scene1.ks]

[mask_off  time="0"  effect="fadeOut"  ]
[cm  ]
[save_img  storage="Chapters/chapter1.png"  ]
[tb_start_tyrano_code]
[camera time="0" zoom="1.000001" wait="false" layer="base" ease_type="linear" ]
[reset_camera time="0" wait="true" layer="base" ]

[playse  volume="70"  time="1000"  buf="0"  storage="SoundEffects_Menu/chapter.ogg"  ]
[tb_image_show  time="1000"  storage="default/Chapters/chapter_1_begin.png"  width="1280"  height="720"  name="img_4"  ]
[tb_ptext_show  x="434"  y="313"  size="100"  color="0xf2f2f2"  time="2000"  text="SS-04"  face="earthorbiter"  edge="0x050505"  shadow="undefined"  anim="true"  fadeout="true"  wait="false"  in_effect="fadeInLeft"  out_effect="fadeOutRight"  ]
[wait  time="2500"  ]
[tb_image_hide  time="1000"  ]
[wait  time="800"  ]
[playbgm  time="1000"  loop="true"  storage="Music/AIKATYPE_00.ogg"  fadein="true"  ]
[wait  time="500"  ]
[tb_start_tyrano_code]

[position layer="message1" width=1280 height=720 top=0 left=0 marginl=250 margint=80 marginr=270 color=black opacity=130]
[tb_show_message_window ]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
Space is a mysterious thing. [l][r][r]A vast sea of stars that doesn’t ever seem to end, filled with suns, planets, and things we’ve yet to even discover. [l][r][r]No one knows just how dense our universe is, and humans will be long gone before they even know if there’s someplace else where life blooms like it does on our earth. [p]

[tb_cg  id="Space"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg storage=Backgrounds/big_01_space_g0.png method=crossfade time=2000 wait=true]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

For now, all we can do is watch the stars lighting up our skies and attempt to uncover the wonders we’ve been blessed with, feeding our curiosity with theories, ideas and fantasies. [l]A brightly lit sky is an inspiring sight, and why we’ve always had such a fanciful idea of the stars.[l][r][r] But in the end, they’re nothing but burning suns. [l]Most have died thousands of years ago, yet we can still see the living corpse of what they used to be. [l][r][r]It’s even one of the closest things to time travel:[l] Time shapes space, just as space shapes time. [p]
[bg storage=Backgrounds/big_01_space_g1.png method=crossfade time=2000 wait=true]
For that reason, science will probably never attain the absolute truth of our universe. [l][r][r]To think that all of those shiny things we see at night actually means the deaths of thousands of solar systems suddenly becomes a gruesome thought, instead of the sweet, dreamy fantasies we imagine. [p]
And like people, stars shine bright before their death, as the remnants of our accomplishments scatter like light for everyone else to see. [l][r][r]And just like anyone else, I want people to see my life burning with passion and pride, before I become a corpse with nothing but my past to prove my existence. [p]
[bg storage=Backgrounds/big_01_space_g2.png method=crossfade time=2000 wait=true]
After all, as a woman of science, I cannot believe in the afterlife.[l] I need to prove myself, and make myself shine before I die. [l][r][r]Like I said, ultimate truth will never be attainable:[l] It’s a holy grail, far from humanity’s reach. [l][r][r]Many tried to play with their lives like they’re some sort of god, but none of them lived long enough to come up with scientific facts. [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[image storage=default/CG/cg01_spaceship.png layer=0 method=crossfade visible=true time=1000 wait=false width=1280 height=720]
[tb_cg  id="B22"]
[wait time=1000]
[bg storage=Backgrounds/bg00_shuttle.jpg]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

And a researcher lives according to their facts. [l][r][r]This is why I’m standing here right now. [l]Nervously talking to myself, trying to get rid of the anxiety slowly eating at me. [l][r][r]My name is Euphémia. [l]But everyone calls me Euphie. [l][r][r]I’m 28, and I aced my astrophysics exams. [p]
I went through intensive training to see if I was fit to navigate in space, and just as planned, passed without any issue. [l][r][r]I’ve been assigned to work as the head researcher and manager at the Orbital Station named SS-04, short for Stellar Sanctuary Number 04. [p]
This is one of many stations like this placed in orbit around Earth. [l]They’re quite big and never require too much maintenance, so the staff is pretty limited in each station. [l][r][r]Don’t know why they decided to pick someone as inexperienced and young as I to be the chief of some base I’ve never set foot on, but I guess that’s thanks to my over-the-top results. [p]

[fadeoutbgm time=2000]
[freeimage layer=0 method=crossfade time=1000 wait=true]

Suddenly, a synthetic voice jolts me out of my thoughts. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
[wse]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#94b8b8">Computer</font>
Arrival in five minutes. [l]Please sit tight and make sure your belts are fastened as we approach Orbital Station SS-04.[p]

[playbgm storage="/Music/03_-_Space_Confessional_-_juneji.ogg"]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color="f"></font>
Sounds like we're nearly there. [l]I’ve been to space before during my training, but it’s the first time I’ll be staying so long outside of the surface of the earth. [l][r][r]Kinda crazy to believe one can live so long outside of their own planet. [l]I'll have to get used to it for the next few months. [p]
Not like I’m really gonna miss Earth anyway. [l]I’m excited enough just thinking about how great it must feel to learn more about what’s surrounding our little blue planet. [l][r][r]It's hard to see as the ship is flying directly towards it, but I can make out the shape of the space station. [l]It looks much bigger than I expected. [l][r][r]It's entirely white, with a giant tube as the supporting and main part of the station, surrounded by circular cylinders making up the many different floors. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[playse storage=SoundEffects_Action/engine_stop.ogg loop=false clear=false layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]

[bg storage=Backgrounds/bg01_space_shuttle.png method=crossfade time=1000 wait=true]

[layopt layer="message1" visible=true]
The spaceship I’m on comes to a stop. [l]The belts automatically unfasten themselves for some weird security reason, and I’m still the only one on the entire ship. [l][r][r]The two men in the cockpit sound like they’re talking to someone over the radio. [p]
I take a plastic bottle out of my bag. [l]My throat feels dry. [l][r][r]Outside the little round window next to me, I could see the giant logo of the station’s number on the perfectly white steel plates making up this strange structure. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_show  name="Pilot"  time="1000"  wait="true"  storage="chara/9/pilot_neutral.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ffb366">Pilot</font>
[chara_mod name="Pilot" storage="/chara/9/pilot_neutral2.png" time=200 cross=false]
Are you ready to get onboard? [p]
[chara_mod name="Pilot" storage="/chara/9/pilot_neutral.png" time=200 cross=false]
[image storage=default/EuphieSprites/euphie_normal_shocked.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Ah! [p]
[freeimage layer=2]
[chara_mod name="Pilot" storage="/chara/9/pilot_neutral.png" time=200 cross=false]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
That guy surprised me.[l] It’s one of the pilots. [l]I put my bottle back in my bag and get up. [p]
I'd been sitting for so long, my legs felt weak. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Y-Yes! [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#ffb366">Pilot</font>
[chara_mod name="Pilot" storage="/chara/9/pilot_neutral2.png" time=200 cross=false]
Then please let us lead the way. [l]Through this door, you'll find the station's Gravity Change Chamber. [l]It'll acclimate your body to the station's gravity. [p]
Once the process is done, you shall be greeted by Klaus, the senior past chief of the station. [p]
[chara_mod name="Pilot" storage="/chara/9/pilot_neutral.png" time=200 cross=false]

[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color="f"></font>
I already know this kind of protocol by heart, but I can’t act like a bratty know-it-all, especially since everyone else in this damn sector seems to be men double my age. [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_hide_all time="500" wait="false"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[bg storage=Backgrounds/bg02_corridor_A.png method=crossfade time=1000 wait=false]
[wait time=1500]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

I enter the GCC (Gravity Change Chamber). [l]Nothing too peculiar, I’ve done this countless times. [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[playse storage=BGS/inside_spaceship.ogg loop=true clear=false layer=3]
[wait time=1000]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

The air pressure starts to shift. [l]It’s really intimidating and weird the first time, but you end up actually enjoying how funky it feels. [l]Or maybe I’m just weird. [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[fadeoutse time=2000 layer=3]
[wait time=2000]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

My body now feels much heavier than before, and the gravity feels like what you’re used to on Earth. [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[playse storage=SoundEffects_Action/door1.ogg loop=false clear=false layer=2]
[wait time=2000]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

The door to the station opens. [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_show  name="Klaus"  time="1000"  wait="true"  storage="chara/2/klaus.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[wait time=1200]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

Right behind it, a tall and fierce looking man is standing there, crossing his arms.[l] I’m taken aback a little, since his gaze is so intimidating it feels like he’s about to scold me. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
I presume you are Euphémia? [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
C-Correct. [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_smile.png" wait=true time=200 cross=false]
Welcome to SS-04. [l]You can call me Klaus. [l]Unless you’ve forgotten something on the ship, if you would get onboard... [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Oh, yes, of course. [p]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg storage=Backgrounds/bg02_corridor_B.png method=crossfade time=1000 wait=true]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
I’ll be your guide around the station until you feel like you’ve understood the layout of this place. [p]
It might seem big and intimidating at first, but it’s much easier to navigate than you might imagine. [l]Even I have not been to half of the rooms here. [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
His words are reassuring, and I start to wonder whether his fierce stance and expression was just a way of appearing more imposing and leader-like or not. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Isn’t that... [l]Kind of important? [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" wait=true time=200 cross=false]
What do you mean? [p]

[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Knowing about every single room the station has.[l] If you run into any kind of problems... [p]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
I asked bluntly, without realizing how condescending that might sound, especially seconds after coming onboard. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
Eh, you’ve got a point here.[l]
[chara_mod name="Klaus" storage="/chara/2/klaus_smile.png" time=200 cross=false]
But don’t worry, I just said that I personally do not know about half of them. [p]
We’ve got a certain someone who knows absolutely everything about them.[l] Moreover, most are just spare or storage rooms, so nothing too important. [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
How are there are so many unimportant rooms? [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
This station used to be a spaceship. [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_surprised.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Now that’s something I did not know. [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" wait=true time=200 cross=false]
I can't remember too well, but since it became obsolete for Earth-to-space transport, it was simply reassigned as a basic orbital station, and renamed accordingly. [p]

[image storage=default/EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I guess that’s why it’s so big. [p]
[freeimage layer=2]


#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
Correct. [l]And also the reason why you don’t have to worry about the general structure of the spaceship. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" wait=true time=200 cross=false]
Usually, the unimportant rooms are only accessible to the engineers anyway, to avoid getting people lost in this titanic place. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
But enough about that. [l]For now, I’ll be presenting you to the staff, and the most important places. [p]
Let’s start with the dormitory, so you can at least lay down your luggage. [l]Those seem quite heavy. [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Yeah...[l] Thanks. [p]
[freeimage layer=2]
[freeimage layer=1]

[chara_hide  name="Klaus"  time="1000"  wait="false"  pos_mode="true"]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
I don’t know why I brought so much.[l] My own comfy pillow, clothes I probably won’t be able to wear, books... [l]I even brought some snacks I could never get up here. [l]I have a sweet tooth, what can I tell you. [l][r][r]I follow Klaus inside the great corridor, suddenly realizing that my luggage really is heavy. [l]Surely because of both the air pressure change and my fatigue. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_show  name="Klaus"  time="1000"  wait="true"  storage="chara/2/klaus_confused.png"  width="495"  height="720"  left="410"  top="0"  reflect="false"]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" wait=true time=200 cross=false]
Aren’t those too heavy? [l]Do you want me to take one or two of those bags? [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_thinking_embarassed.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
N-No! [l]I’m fine, don’t worry about it. [p]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font color=""></font>
Truth be told, I should have accepted. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
Good. Because there’s around four more minutes of walking. [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_shocked_teeth.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
Wh-! [p]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font color=""></font>
F-Four?! [l]Now I just feel like an idiot. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_smile.png" wait=true time=200 cross=false]
I’m just kidding.[l] The station is divided into multiple floors, and you access them through the central elevators just there. [p]
[freeimage layer=1]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg storage=Backgrounds/bg03_elevators_front.png method=crossfade time=1000 wait=true]
[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font color=""></font>
Klaus came to a stop in front of the elevators. [p]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=3]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
For practical reasons, there are two different ones.[l] They’re just as easy to use as any kind of elevator. [l]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=3]
Now, if you would get inside so we can continue our tour. [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=true]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/footsteps_light.ogg loop=false clear=false layer=3]

#<font color=""></font>
Klaus goes in the elevator, and I follow him in. [p]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=2]
The gate closes and the elevator starts to move slowly. [l]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=4]
To break the silence, Klaus continues his explanations. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 cross=false]
At the very bottom lie the escape pods. [l]Obviously, we’re only supposed to access them during emergencies. [l]On floor -2 lie the server and engineering room. [p]
Only the main engineer and technical staff have access to them: [l]So Joshua, and Alexei.[l] Floor -1 has nothing but spare storage rooms, accessible only to Joshua. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 cross=false]
Basically, anything below the central floor is of no importance to you, so don’t worry too much. [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
Easy enough. [p]
[freeimage layer=2]
[freeimage layer=1]

[fadeoutse time=400 layer=4]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=2]

#<font color=""></font>
A soft ring indicates we’ve arrived on floor one.[l]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=3]
The doors open once again. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
And we’ve arrived on the first floor. [p]

[freeimage layer=1]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[_tb_end_tyrano_code]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[wait  time="1100"  ]
[jump  storage="scene1part2joshua.ks"  target=""  ]
