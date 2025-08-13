[_tb_system_call storage=system/_scene2part7observatory.ks]

[tb_start_tyrano_code]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=3]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=true]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
How many times did I even take this elevator today, I wonder... [p]
[playse storage=SoundEffects_Action/elevator_up.ogg loop=true clear=false layer=4]

[current layer="message0"]
[layopt layer="message1" visible=false]

[chara_show  name="Nicola"  time="500"  wait="true"  storage="chara/5/nicola_leaning_pouting.png"  width="495"  height="720"  left="382"  top="0"  reflect="false"]

[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Girl, you look dead tired... [l]Are you sure you're fine? [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yes, it's no problem. [l]My curiosity's stronger than my fatigue right now. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola.png"  time=200 wait=true cross=false]
If you say so... [l]But you did have a rough day, unlike my shut-in butt. [p]
[image storage=default/EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
How can you say that? [l]You're the one who's been working non-stop for hours... [p]
[freeimage layer=2]
[fadeoutse time=500 buf=4]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=0]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_happy.png" time=200 wait=true cross=false]
I guess. [l]But like you, my curiosity's stronger than anything! [p]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=1]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
The elevator gates open. [l]
[bg storage=Backgrounds/bg09_observatory.png method=crossfade time=1000 wait=false]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=2]
[playse storage=SoundEffects_Action/footsteps_light.ogg loop=false clear=false layer=4]
We head towards the observatory. [l]
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png"  time=200 wait=true cross=false]
Nicola sits down on the chair, puts down all of the paper on a small desk near her, and starts gazing into the telescope. [l]
[playse storage=SoundEffects_Action/mechanical_click.ogg loop=false clear=false layer=5]
After turning a few dials and pressing some buttons on the motherboard, the telescope's eye starts moving. [l]She looks into the scope without saying a word, then speaks. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png"  time=200 wait=true cross=false]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Exactly how did you even find this? [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
... [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I can hardly answer. [l]Though it seemed to have lasted for so long, I can only remember very vague memories. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_flustered.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Do you... [l]Believe in magic? [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png"  time=200 wait=true cross=false]
Nicola turned around. [l]But instead of looking at me with a dumb expression, she had a straight and serious face. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I mean, I don't really mean "magic" in a spiritual or fantasy sense, but... [l]More like a sort of foreign technology and energy source... [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png"  time=200 wait=true cross=false]
I don't really get what you're saying, but it's good if you can speak up about what happened to you. [l]If it's your way of doing so, go on. [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]It's like what the guys said earlier... [l]This meteorite, it has something more to it... [l]Like beneath its surface, it has strange, foreign properties. [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png"  time=200 wait=true cross=false]
Nicola was looking back into her scope, but still seemed to closely listen to me. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]Now that I think about it, the one in my thoughts felt... [l]Different. [p]
[freeimage layer=2]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
The image seems different from the ones I had when I dozed off in space. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting.png"  time=200 wait=true cross=false]
I just don't understand. [l]It was obviously impossible for you to see something so far away. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_frown.png"  time=200 wait=true cross=false]
And you're telling me that the one you saw was much clearer than the images coming from the best telescope ever created? [p]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
It... [l]Wasn't clear. [l]It didn't show up as an image or from my eyes, it was more like something imprinted what it looks like in my mind. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_question.png"  time=200 wait=true cross=false]
Now that you've mentioned all this to me... [l]I think Alexeï told me about similar experiences. [p]
[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...Really? [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral2.png"  time=200 wait=true cross=false]
It's probably an astronaut thing. [l]I'm not sure of it at all, however. [l]I'm not one, so I'm just speculating. [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Did this really happen to Alexeï as well? [l]I can't imagine him having experienced the same thing as I. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png"  time=200 wait=true cross=false]
[fadeoutbgm time=500]
[playse storage=SoundEffects_Action/rustling_clothes.ogg loop=false clear=false]
Nicola gets up from her chair... [l]And suddenly embraces me. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_embarassed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
N-[l]Nicola...? [p]
[playbgm storage="/music/What_a_Day_Scramel.ogg"]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_happy.png"  time=200 wait=true cross=false]
Must have been tough for you. [l]I hope everything's okay. [p]
[image storage=default/EuphieSprites/euphie_normal_embarassed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Yeah, I'm... [l]Fine. [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Nicola's embrace felt... [l]Extremely comforting. [l][r][r]After this mess of a day, feeling the embrace of someone warmed me up from the coldness and loneliness I experienced earlier. [l]I'm not used to those, and I'm as stiff as a nail while she tries to hug me. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_scared.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
But... [l]Is there something wrong? [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png"  time=200 wait=true cross=false]
Nope, not really. [l]I'm just glad you discovered it. [l]Even if I did the research, we wouldn't have found this out if it wasn't for your help. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_happy.png"  time=200 wait=true cross=false]
Thanks to you, we might be able to anticipate it and make sure this comet doesn't even ever reach us. [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png"  time=200 wait=true cross=false]
Nicola lets go of me. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Eh. [l]Sorry about that. [l]You looked so pale, I thought you were about to faint. [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
That's one hell of a way to anticipate someone about to fall, I guess... [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting.png"  time=200 wait=true cross=false]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
No but really, you honestly need to rest. [l]Go tell the others to go to bed soon, too. [p]
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
You're probably right... [l]But what about you? [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png"  time=200 wait=true cross=false]
Oh, me? [l]I'm used to working overnight. [l]Gives me more spare time when I actually need it, too. [p]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Don't strain yourself... [l]You worked extremely hard. [l]I don't want you to ground me about self care if you're gonna sleep while working too. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png"  time=200 wait=true cross=false]
Eheh, good point. [l]But don't worry about me, I'll be fine. [l]Now go and tell the others. [p]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yes, I'll do that... [l]Thanks, Nico. [l]Your support is appreciated. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_happy.png"  time=200 wait=true cross=false]
Of course, sweetie. [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
I reach for the elevator call button. [l]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
The doors open. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Goodnight, Nico! [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png"  time=200 wait=true cross=false]
'Night, Euphie! [l]Loosen up when you get hugged, I felt like I was hugging a street pole! [p]
[image storage=default/EuphieSprites/euphie_normal_embarassed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...Kgh! [p]
[freeimage layer=2]

[freeimage layer=1][layopt layer="message0" visible=false]
[chara_hide_all time="500" wait="false"]
[fadeoutbgm time=3000]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=3]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=false]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=2]
#<font face="earthorbiter"><font color=""></font>
And... [l]The elevator doors close. [l]Always the last word with her. [l]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=3]
At least I'm alone in the elevator, and I'm the only witness of my embarrassment. [p]
[bg storage=black.png method=crossfade time=1000 wait=true]


[_tb_end_tyrano_code]

[jump  storage="scene2part8dorms.ks"  target=""  ]
