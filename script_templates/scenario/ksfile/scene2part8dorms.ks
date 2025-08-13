[_tb_system_call storage=system/_scene2part8dorms.ks]

[tb_start_tyrano_code]
[fadeoutse time=1500 buf=3]
[wait time=1000]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
[wse]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
[bg storage=Backgrounds/bg02_corridor_C.png method=crossfade time=1000 wait=true]

#<font face="earthorbiter"><font color=""></font>
I reach the living quarters... [l]
[bg storage=lounge.jpg method=crossfade time=1000 wait=false]
[chara_show  name="Joshua"  time="1000"  wait="false"  storage="chara/3/joshua_thinking.png"  width="495"  height="720"  left="-1"  top="0"  reflect="false"]
[chara_show  name="Alexei"  time="1000"  wait="false"  storage="chara/4/alex.png"  width="495"  height="779"  left="377"  top="0"  reflect="false"]
[chara_show  name="Klaus"  time="1000"  wait="true"  storage="chara/2/klaus.png"  width="495"  height="720"  left="700"  top="0"  reflect="false"]
And enter the resting room, where everyone else is. [l]Seems like even Alexeï's back. [p]
[playbgm storage="/music/Viridian_Variations_(placeholder).ogg" ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png"  time=200 wait=true cross=false]
Hey, Euphémia. [l]How are you doing? [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Fine, more or less... [l]I came here to tell you that Nicola's planning on working overnight on the comet. [p]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_flustered.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Figured that as stubborn as she is, there was no use discussing that with her... [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png"  time=200 wait=true cross=false]
I can't blame you. [l]When she's got something on her mind, she won't stop until she knows what's wrong... [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png"  time=200 wait=true cross=false]
And honestly, I, too, can't find a way to rest after having learned about this comet. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png"  time=200 wait=true cross=false]
Hey, Euphie. [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

[playse storage=SoundEffects_Action/rustling_clothes.ogg loop=false clear=false layer=3]
#<font face="earthorbiter"><font color=""></font>
Joshua sits up from the couch he was lying on, and approaches me whilst looking for something in his pocket. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_smile.png"  time=200 wait=true cross=false]
Here it is! [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font face="earthorbiter"><font color=""></font>
It's Nico's music box... [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_surprised.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Did you already repair it?! [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png"  time=200 wait=true cross=false]
Yep! [l]Easy as pie. [l]Seems like the shock jammed some pieces up, but I managed to put them back in place. [p]
[image storage=default/EuphieSprites/euphie_normal_surprised.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
So... [l]It works? [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png"  time=200 wait=true cross=false]
Uh, no, it doesn't. [p]
[image storage=default/EuphieSprites/euphie_normal_sad.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]Oh. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png"  time=200 wait=true cross=false]
I was kidding, you idiot...[l] Loosen up a little, of course it works if I repaired it! [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I feel like people have been asking me to relax non-stop for the past 24 hours... [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[fadeoutbgm time=2000]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua.png"  time=200 wait=true cross=false]
Try turning the little key! [p]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

[playse storage=SoundEffects_Action/musicbox_keyturn.ogg loop=false clear=false layer=3]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I turn the key around, for about 4 turns, and.... [p]

[current layer="message1"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[stopbgm]
[wse]
[playbgm storage="/music/musicbox.ogg"]
[wait time=3000]

[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
The soft music notes echoes in the room, as everyone listens in silence. [l]The air is harmonious and melodic, and the music box's tone makes the melody more mysterious and melancholic. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_smile_big.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Thank you so much, Joshua! [l]She'll love it when I bring it back to her! [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_sleep_sigh.png"  time=200 wait=true cross=false]
I finished making it earlier, but with everything going on... [l]I didn't think about giving it to you, sorry 'bout that. [p]
[fadeoutbgm time=2000]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
It's alright. [l]I'll bring it to her right now, I can... [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse storage=SoundEffects_Action/heartbeat.ogg loop=false clear=false layer=3]
[chara_mod name="Klaus" storage="/chara/2/klaus_wary_shocked.png"  time=200 cross=false]
[chara_mod name="Alexei" storage="/chara/4/alex_stare.png"  time=200 cross=false]
[chara_mod name="Joshua" storage="/chara/3/joshua_surprised.png"  time=200 cross=false]
[wait time=1000]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/falling.ogg loop=false clear=false layer=3]
[quake count=2 time=300 hmax=10]
#<font face="earthorbiter"><font color=""></font>
Suddenly, my consciousness turns blank for a moment... [l]And I fall into Joshua's arms. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Hey, Euphie, you alright?! [p]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png"  time=200 wait=true cross=false]
Lay her down on the couch. [p]

[freeimage layer=1][current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[tb_image_show  time="1000"  storage="default/CG/black.png"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_14"  ]
[wait  time="1000"  ]
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png"  time=200 cross=false]
[chara_mod name="Alexei" storage="/chara/4/alex.png"  time=200 cross=false]
[chara_mod name="Joshua" storage="/chara/3/joshua_perplexed.png"  time=200 cross=false]
[wait  time="1000"  ]
[tb_image_hide  time="1000"  ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
After having slept for a few minutes, I wake up. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_perplexed.png"  time=200 wait=true cross=false]
Hey, don't scare me like that again! [p]

[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Ah, sorry. [l]How long was I out for..? [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_angry2.png"  time=200 wait=true cross=false]
Just two minutes. [l]I was about to go to the infirmary. [p]

[image storage=default/EuphieSprites/euphie_normal_flustered.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Ah, no, don't bother... [l]I'm just tired from everything that's been happening today. [p]
[freeimage layer=2]

[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png"  time=200 wait=true cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Alright. [l]Then I order you to go to bed. [p]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yeah, I think that's what I'll do... [p]
[freeimage layer=2]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png"  time=200 wait=true cross=false]
If you want, one of us can bring the music box to Nicola ourselves. [p]

[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
No... [l]If possible, I'd like to give it to her myself. [l]I'll do it tomorrow morning as a surprise. [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png"  time=200 wait=true cross=false]
Yes, of course. [p]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Can you guys check up on her and make sure Nico's fine upstairs? [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Don't worry about it. [l]You just focus on resting. [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_sad.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
...[l]Thanks. [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_hide_all time="1000" wait="false"]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=3]
[bg storage=Backgrounds/bg07_dorm1.png method=crossfade time=1500 wait=true]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Taking the music box with me, I head back into my room. [l]I would have loved to get a shower right before going to bed, but I don't think I have enough energy to even do that. [p]
[bg storage=black.png method=crossfade time=1500 wait=false]
After changing into my nightwear, I get under my covers, and exhale while holding the music box. [l]
[playse storage=SoundEffects_Action/musicbox_keyturn.ogg loop=false clear=false layer=3]
I turn the key around once more... [l]
[wse]
[playbgm storage="/music/musicbox.ogg"]
and put it on the small desk right next to my bed, and turn off the light as the music play. [l] The only thing expressing light were the dimly lit neon lights on the side of the beds, illuminating the room just the right amount to let me relax and fall asleep. [p]
What a sweet melody... [l]I can't wait until I show it back to Nicola. [p]
Helped by the music box's song, I easily manage to drift to sleep despite this long and eventful day... [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[tb_hide_message_window  ]
[stopbgm  time="5000"  fadeout="true"  ]
[tb_image_show  time="1500"  storage="default/Chapters/chapter_2_end.png"  width="1280"  height="720" ]
[wait  time="4500"  ]
[tb_image_hide  time="1500"  ]
[wait  time="1000"  ]


[wait time="1000"]
[tb_image_hide  time="0"  ]
[jump  storage="title_screen.ks"  target=""  ]


[tb_image_show  time="1000"  storage="default/Chapters/continuesave.png"  width="1280"  height="720"  name="img_296"  ]
[_tb_end_tyrano_code]

*chapter2interlude

[clickable  storage="scene2part8dorms.ks"  x="216"  y="228"  width="828"  height="95"  target="*save"  _clickable_img="save.png"  ]
[clickable  storage="scene2part8dorms.ks"  x="367"  y="347"  width="527"  height="73"  target="*continue"  _clickable_img="save.png"  ]
[button  storage="scene2part8dorms.ks"  target="*title"  graphic="button/title.png"  width="70"  height="70"  x="1179"  y="630"  _clickable_img=""  ]
[s  ]
*save

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/ok_sound.ogg"  ]
[tb_start_tyrano_code]
[showsave]
[_tb_end_tyrano_code]

[cm  ]
[jump  storage="scene2part8dorms.ks"  target="*chapter2interlude"  ]
*title

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/cancel_sound.ogg"  ]
[tb_image_hide  time="0"  ]
[jump  storage="title_screen.ks"  target=""  ]
*continue

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/ok_sound.ogg"  ]
[tb_image_hide  time="1000"  ]
[wait  time="3000"  ]
[jump  storage="scene3part1meteorshower.ks"  target=""  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/cancel_sound.ogg"  ]
[s  ]
