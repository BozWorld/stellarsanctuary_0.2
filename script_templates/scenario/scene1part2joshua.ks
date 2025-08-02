[_tb_system_call storage=system/_scene1part2joshua.ks]

[tb_start_tyrano_code]
[bg  time="0" method="crossfade" storage="Backgrounds/bg02_corridor_C.png"]
[mask_off  time="2000" effect="fadeOut"]
[chara_show name="Klaus" time="1000" wait="true" storage="chara/2/klaus.png" width="495" height="720" left="410" top="0" reflect="false"]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[tb_show_message_window]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Here we are! [l]The entrance to the dorms. [l]They’re located right next to the cafeteria. [l]You can basically think of this floor like the living quarters- [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" wait=true time=200 cross=false]
Euphémia? [l]Are you okay? [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_embarassed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Y-Yes, sorry! [p]
[freeimage layer=2]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
I was still carrying the burden of my luggage. [l]What a pathetic first impression. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[bg time="1000" method="crossfade" cross="true" storage="Backgrounds/bg07_dorm1.png"]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
Let me show you your room. [l]You’ll be sharing yours with Nicola. [l]She was the only girl in the station until you joined us. [l]But you can still choose a spare room, if you prefer being alone. [p]

[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I’ll be okay![l] Some company is always a plus. [p]
[freeimage layer=2]

[chara_mod name="Klaus" storage="/chara/2/klaus_smile.png" wait=true time=200 cross=false]
[wait time=0001]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Great. [l]To be honest, it’s good to have another woman on board. [l]Since most of the staff are guys, Nicola must be feeling a little bit lonel- [p]
[freeimage layer=1]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[stopbgm]
[playse storage=SoundEffects_Action/snore.ogg loop=false clear=false layer=1]
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" wait=true time=200 cross=false]
[wse]

[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font color=""></font>
His words were cut out by some nearby snoring. [p]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_pathetic.png" wait=true time=200 cross=false]
Wait, don’t tell me- [p]

#<font color=""></font>
[layopt layer="message0" visible=false]
[freeimage layer=1]
[chara_hide  name="Klaus" time="500" wait="true" pos_mode="true"]
[current layer="message1"]
[layopt layer="message1" visible=true]
Klaus suddenly ran outside to the next room over.  [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg  time="1000" method="crossfade" storage="Backgrounds/bg02_corridor_C.png" cross="true"]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

I drop my luggage in my new room next to the bed, and rush over to follow him. [p]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[bg time="1000" method="crossfade" storage="Backgrounds/bg07_dorm2.png"]
[chara_show  name="Joshua"  time="1000"  wait="false"  storage="chara/3/joshua_sleep.png"  width="495"  height="720"  left="168"  top="0"  reflect="false"]
[chara_show  name="Klaus"  time="1000"  wait="true"  storage="chara/2/klaus_angry.png"  width="495"  height="720"  left="510"  top="0"  reflect="false"]

[current layer="message0"]
[layopt layer="message0" visible=true]
[layopt layer="message1" visible=false]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[quake time="500" count="3" hmax="10" wait="false"]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_angry2.png" wait=true time=200 cross=false]
Joshua![l] You’ve got to be kidding me! [p]

[playbgm storage="/music/04_-_Comfortable_Void_-_postblankvoid.ogg"]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_scared.png" wait=true time=200 cross=false]
uhWAAaa?! [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
There on the bed lay a guy I’d yet to meet. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_sleep_sigh.png" wait=true time=200 cross=false]
Damn, can’t a dude get some sleep over here? [p]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_pathetic.png" wait=true time=200 cross=false]
Talk about being busy![l] You’ve just been sleeping like a complete idiot for the past few hours, haven’t you?! [l]Weren’t you supposed to check up on the maintenance of the storage rooms? [p]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_perplexed.png" wait=true time=200 cross=false]
Geez, I just woke up, can’t you calm your voice down just a- [p]
[chara_mod name="Joshua" storage="/chara/3/joshua.png" wait=true time=200 cross=false]
Wait, who’s this pretty face I see over here?[l] She’s way too tall and ladylike to be the little chipmunk. [p]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" wait=true time=200 cross=false]
Oh, Euphémia. [l]Sorry you had to see that. [l]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
This is Joshua, he’s apparently supposed to be our engineer, but the last person to see him actually working probably died of old age. [p]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_sleep_smile.png" wait=true time=200 cross=false]
Hey, don’t be an ass... [l]I’m a hard worker at heart! [l]
[chara_mod name="Joshua" storage="/chara/3/joshua_perplexed.png" wait=true time=200 cross=false]
Besides, nobody ever goes in those old rooms besides me, and nothing ever happens! [l]You guys don’t even need me. [p]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_angry.png" wait=true time=200 cross=false]
That’s beyond the point! [l]You’ve gotta follow your schedule if you want to keep your job. [p]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_sleep_sigh.png" wait=true time=200 cross=false]
Right, right... [p]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" wait=true time=200 cross=false]
I can’t believe our pay is so high, when you see the kind of lazybones hanging up in space... [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
Oh, I forgot to ask you to present yourself, Euphémia. [p]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Hey! I’m new here. [l]I’ll be your new scientist and astronaut, nice to meet you.[l] And you can call me Euphie. [p]
[freeimage layer=2]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_smile.png" wait=true time=200 cross=false]
Welcome aboard, Euphie! [l]I guess you already saw how serious old pops is, but just like all dads, he’s got a soft and adorable side. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" wait=true time=200 cross=false]
Sigh...[l] Have you no shame? [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_angry.png" wait=true time=200 cross=false]
That’s a compliment! [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
Sure. [l]Well, at least we didn’t have to search everywhere for you. [l]Anyway, as you can see Euphémia, the dorms are all pretty much the same for everyone. [p]
They’re all equipped with showers, but be careful, since you can only use them between 20 and 23 o’clock. [l]Water isn’t as abundant as it is down on Earth, for obvious reasons. [p]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Roger. [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_angry2.png" wait=true time=200 cross=false]
And you, Joshua, go back to your assigned duties. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_sleep_sigh.png" wait=true time=200 cross=false]
’Got no choice, now do I... [l]
[chara_mod name="Joshua" storage="/chara/3/joshua.png" wait=true time=200 cross=false]
Well, off I go on my own little adventures in the good old storage rooms! [l]See you later, sweetie! [p]

[chara_hide  name="Joshua"  time="1000"  wait="true"  pos_mode="false"  ]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" wait=true time=200 cross=false]
Pay him no mind... [p]

[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Ahah, it’s fine! [p]

[freeimage layer=2]
[freeimage layer=1]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

[bg  time="1500"  wait=false method="crossfade"  storage="Backgrounds/bg02_corridor_C.png"  ]

#<font color=""></font>
We then step out of Joshua’s room. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
I see you’ve left your luggage in the room.[l] Good. [l]Right, next up is the cafeteria. [l]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" wait=true time=200 cross=false]
It’s... [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message1" visible=true]
[layopt layer="message0" visible=false]

#<font color=""></font>
Klaus rolls up his sleeve to check his watch. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
It’s eleven right now. [l]
We might as well get there when it’s lunch time. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" wait=true time=200 cross=false]
I presume you must be hungry and tired from your trip, but we just have to meet up with Nicola and Alexeï before then, until we have a final meeting with all of us at lunch time. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" wait=true time=200 cross=false]
Is that fine with you? [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
How can you say 'no' to that? [l]Everything he says is precise and directly to the point, like he carefully picks his words to make sure he doesn’t forget to say a single thing... [p]
I guess some people would be annoyed by that, but he feels really dependable and that’s not something I dislike. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
No objections. [p]
[freeimage layer=2]

#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Then let’s go find them. [l]They’re probably in their offices or the observatory. [p]
[freeimage layer=1]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[_tb_end_tyrano_code]

[jump  storage="scene1part3alexei.ks"  target=""  ]
