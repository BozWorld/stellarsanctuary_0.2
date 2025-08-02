[_tb_system_call storage=system/_scene2part6bridge.ks]

[tb_start_tyrano_code]
[wait time=1500]
[playse storage=BGS/ringtone.ogg loop=true clear=false layer=3]
[wait time=1500]
I wake up to the loud sound of my watch's ringtone. [l]I feel drowsy, but I still have enough energy to accept the call. [p]
[fadeoutse time=0 buf=3]
[playse storage=SoundEffects_Action/beep1.ogg loop=false clear=false layer=1]
[wait time=1500]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
[image storage=default/Com_Nico/nico_com_neutral.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Hey, Euphie. [l]Sorry if I just woke you up but I need you to go to the command deck. [p]
We're about to have an important discussion with all the staff. [l]I'm about to contact everyone else, so get ready. [p]
See you. [p]
[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=1]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[wait time=2000]
#<font face="earthorbiter"><font color=""></font>
Nicola's voice had never sounded so serious. [l]It's almost scary. [l]
[layopt layer="message1" visible=false]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=true]
[playse storage=SoundEffects_Action/elevator_ding.ogg loop=false clear=false layer=1]
[layopt layer="message1" visible=true]
After a quick trip to the bathroom, I head towards the command deck. [l]
[layopt layer="message1" visible=false]
[playse storage=SoundEffects_Action/door1_soft.ogg loop=false clear=false layer=2]
[bg storage=Backgrounds/bg10_command_deck.png method=crossfade time=1000 wait=true]
[chara_show  name="Joshua"  time="1500"  wait="false"  storage="chara/3/joshua.png"  width="495"  height="720"  left="20"  top="0"  reflect="false"]
[chara_show  name="Klaus"  time="1500"  wait="false"  storage="chara/2/klaus.png"  width="495"  height="720"  left="480"  top="0"  reflect="false"]
[chara_show  name="Alexei"  time="1500"  wait="false"  storage="chara/4/alex.png"  width="495"  height="720"  wait="true" left="720"  top="0"  reflect="false"]
[layopt layer="message1" visible=true]
As the elevator doors open, I can see that everyone but Nicola was already there. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Feeling better? [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Sorta... [l]Has Nicola told you anything? [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" time=200 wait=true cross=false]
Nothing as of yet. [l]I asked her why she wanted us to do this today and not tomorrow, to let you rest a little... [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 wait=true cross=false]
But she said you would have been upset if we did a meeting without you. [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
She's probably not wrong there. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Whatever it is she wants to tell us... [l]It seems important. [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]

[chara_mod name="Joshua" storage="/chara/3/joshua.png" time=200 wait=true cross=false]
[playse storage=SoundEffects_Action/footsteps_light.ogg loop=false clear=false layer=1]
[chara_show  name="Nicola"  time="1500"  wait="false"  storage="chara/5/nicola_neutral.png"  width="495"  height="720"  wait=true left="240"  top="0"  reflect="false"]

[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
Right when Joshua said that, Nicola came out of the elevator with a paper jacket. [l]She approached us without saying a word. [l]She didn't stop walking until she reached one of the computers on the boarding deck. [l]
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 wait=true cross=false]
[playse storage=SoundEffects_Action/spank_head.ogg loop=false clear=false layer=2]
She put the paper jacket down nearby, [l]
[playse storage=SoundEffects_Action/keyboard.ogg loop=false clear=false layer=3]
[chara_mod name="Nicola" storage="/chara/5/nicola_frown.png" time=200 wait=true cross=false]
and started typing on the fancy keyboard. [l]
[playse storage=SoundEffects_Action/mechanical_click.ogg loop=false clear=false layer=4]
She takes out a USB stick, and inserts it. [l]Once done with her preparations, she turns around to face us with a serious look on her face. [p]

[freeimage layer=1][current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]

[playbgm storage="/music/Gazing_from_orbit.ogg"]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
Thank you all for coming. [l]You're probably all wondering why I asked all of you to join me here this late. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" time=200 wait=true cross=false]
Is it linked to Euphémia? [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Klaus seemed worried. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_question.png" time=200 wait=true cross=false]
More or less. [l]I'll say it's thanks to her that I discovered... [l]this. [p]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" time=200 wait=true cross=false]
Enough with the suspense. [l]Is it about those coordinates Euphémia asked of you to analyze? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 cross=false]
Correct. [l]At first, I thought this was all something she made up, or completely imagined while she was going crazy earlier. [p]
I've spent a few hours using the telescope, looking further and further away from those coordinates. [l]Of course, there was nothing out of the ordinary. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png" time=200 wait=true cross=false]
Stars, stellar systems... [l]Nothing that hasn't been discovered before. [p]
After searching further and expanding my range of view, I could get closer to "something". [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
For some reason, the color of the space was shifting the more I approached "something"... [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 wait=true cross=false]
And then, I discovered what it was. [l]I took pictures of it, and analyzed everything as much as I could with the means we have right now. [p]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
[chara_mod name="Alexei" storage="/chara/4/alex_stare.png" time=200 wait=true cross=false]
Something, something... [l]Just get to the point. [l]Show us. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
...[l]Alright. [l]But I'll ask of you to collect yourselves when you learn the nature of it. [p]
This is by far the most incredible thing we've ever discovered for the past hundreds of years. [p]
It's something that will most likely change our current lifestyle, and it's something we'll all be forever linked to the moment you learn about it. [p]
Is that clear? [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
The way she said it was terrifying. [l]Is it really something that important? [l]Is it my fault? [l]Whatever it is she discovered, it doesn't seem to be a joke. [l]Something is definitely there, and Nicola discovered its true nature. [l]I suddenly remember what I felt earlier, and suddenly, my stomach hurts. [l][r][r]But whatever this truth is, I need to hear it. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]I'm ready to see it. [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
I stare at Nicola dead in the eye. [l]She, too, glares back, as if to confirm I'm determined to see it through. [l][r][r]She looks at everyone else in the room, as if to wait for their answers and not just mine. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" time=200 wait=true cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Whatever it is, I'm ready to face it. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
If it's that important, there's no way I'll hide from it. [l]I'm ready to hear it. [p]
[chara_mod name="Alexei" storage="/chara/4/alex_lookout.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Like I said, stop this suspense and show it to us already. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 wait=true cross=false]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Nicola pauses for a second, then turns her back to us. [l]She navigates through the computer's folder, selects one of the files... [l]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral2.png" time=200 wait=true cross=false]
And hovers her finger on top of the "Enter" key. [l][r][r]She pauses, again, and finally... [l]
[playse storage=SoundEffects_Action/beep2.ogg loop=false clear=false layer=5]
[chara_mod name="Nicola" storage="/chara/5/nicola_upset2.png" time=200 wait=true cross=false]
She presses it down. [l]
[chara_hide_all time="1000" wait="true"]
On the grand, widescreen... [l]A picture flashes up. [l]
[layopt layer="message1" visible=false]
[playse storage=BGS/screaming.ogg loop=false clear=false layer=1]
[bg storage=CG_Comet/kodamacometstatic1.jpg method=crossfade time=1000 wait=true]
[wait time=1000]
[layopt layer="message1" visible=true]
It's exactly what I thought I saw. [l]Immediately, I could feel something coming through my body. [l]It was raw fear, mixed with surprise and shock.[l][r][r]Yes... [l]That was definitely it. [l]Whatever this is, displayed on screen... [l]This is exactly what I've unconsciously imagined when I was drifting away. [p]
On the screen... [l]was an enlarged view of a gigantic sphere of rock, of multiple shades of color. [l]Usually, those imperfect shades of color are to be expected when you take pictures of spatial entities from very far away. [l][r][r]But here, I could tell the difference. [l]From a single look, I could see that those colors were the real thing. [l]It was actually colored in such a way. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
You’ve got to...! [l]No fucking way! [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Alexeï seemed to have figured it out. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
What have you figured out? [l]Tell us, dammit! [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
I don't need to tell you that this is a meteorite. [l]Let's not even talk about those colors for now, but about it's size instead. [p]
It's not unusual to witness meteorites this big from here. [l]After all, we're specialized in stargazing. [l]It's not uncommon to see meteorites as big as those. [p]
We simply classify them, observe them, and make sure they don't come across any of the organization’s satellites and space stations. [p]
Even then, they almost never reach our solar system in the first place, so we don't even have to care about them that much. [l]However, this one, ahah... [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
What about it? [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Somehow, I know... [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Do I really have to say it? [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Somehow... [l]I know what she's about to say. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
Stop avoiding the subject! [l]Just tell us! [p]

[stopse  time="0"  buf="0"  fadeout="false"  ]
[stopbgm  time="0"  ]
[bg storage=Backgrounds/bg10_command_deck.png method=crossfade time=500 wait=false]
[chara_show  name="Joshua"  time="1000"  wait="false"  storage="chara/3/joshua.png"  width="495"  height="720"  left="20"  top="0"  reflect="false"  ]
[chara_show  name="Klaus"  time="1000"  wait="false"  storage="chara/2/klaus.png"  width="495"  height="720"  left="480"  top="0"  reflect="false"  ]
[chara_show  name="Alexei"  time="1000"  wait="false"  storage="chara/4/alex.png"  width="495"  height="720"  left="720"  top="0"  reflect="false"  ]
[chara_show  name="Nicola"  time="1000"  wait="false"  storage="chara/5/nicola_neutral.png"  width="495"  height="720"  left="240"  top="0"  reflect="false"  ]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_upset2.png" time=200 wait=true cross=false]
...That comet. [l]Within thirty years, it’s going to hit our planet. [p]
[playbgm     loop="true"  storage="Music/09_-_Non_Pilot_Journey_-_juneji.ogg"  ]
[chara_mod name="Joshua" storage="/chara/3/joshua_shock.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Wh. [l]What? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_frown.png" time=200 wait=true cross=false]
You heard me. [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_sweat.png" time=200 wait=true cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
You're kidding, right? [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
Even Klaus seemed at a loss with this announcement. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_upset.png" time=200 wait=true cross=false]
I'm not. [p]
[image storage=default/EuphieSprites/euphie_normal_stressed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
...[l]Shouldn't it shrink or get destroyed before reaching earth thanks to the atmosphere? [p]
[freeimage layer=2]
[chara_mod name="Alexei" storage="/chara/4/alex_thinking_shocked.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Usually, that'd be the case, yes. [l]But see those colors? [l]I couldn't see anything like it in my database. [l]I have absolutely never seen this before. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 wait=true cross=false]
If we imagine the worst happening, it's probably a matter immune or dense enough to completely ignore our atmosphere's properties. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_frown.png" time=200 wait=true cross=false]
But even if it's just like any other comet, it would be big enough to deal enough damage. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_scream_sweat.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Is that your idea of a joke?! [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_frown.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Look at the face Alexeï’s making. [l]He's the one with the most knowledge about comets here, along with me. [l]Yet look at his face. [l]Does this look like it's a joke? [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]
#<font face="earthorbiter"><font color=""></font>
Alexeï was still in shock. [l]He looked so pale, it felt like he was about to faint any moment. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Are we... [l]Going to... [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Going to die? [l]Who knows. [l]But something as big as this is sure to deal one hell of a blow to our earth... [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_upset2.png" time=200 wait=true cross=false]
Even under the best circumstances, a whole country might receive deadly casualties. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 wait=true cross=false]
It's going to cause earthquakes, tsunamis, fire... [l]And most likely grave changes in the weather, leading to even greater problems than the crash itself. [p]
The political and societal situation of it will be one hell of a mess, too. [p]
[chara_mod name="Joshua" storage="/chara/3/joshua_scream.png" time=200 wait=true cross=false]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
How can you be so sure? [p]Are you telling me nobody discovered this before? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_shocked.png" time=200 wait=true cross=false]
Then what the hell is our job supposed to be, you fucking airhead?! [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_angry.png" time=200 wait=true cross=false]
We’re the ones supposed to make these kinds of discoveries! [l]If someone has to discover it first, it's us! [l]So don't act so fucking surprised! [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
This is the first time I could see Nicola genuinely losing her temper. [l]Instead of feeling shocked, seeing her react like that just increased the uneasiness and fear this whole situation made us feel. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]

[chara_hide_all  time="1000"  wait="false"  ]
[bg storage=CG_Comet/kodamacometstatic1.jpg method=crossfade time=1500 wait=true]
[layopt layer="message0" visible=true]

[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking_sweat.png" time=200 wait=true cross=false]
There... [l]There should be a way to stop it, right? [p]
Within thirty years, we should be able to deviate its trajectory, or... [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" time=200 wait=true cross=false]
...Try destroying it? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
At this point it should be easier to destroy it than deviate it. [l]With the size of this thing, it should come over here faster than light. [p]
And there's no way we could change the point of gravity of this thing either. [l]Whatever we would send at it could even create the opposite effect. [p]
Our sent object would be the one gravitating around the comet instead. [p]

[bg storage=Backgrounds/bg10_command_deck.png method=crossfade time=1000 wait=false]
[chara_show  name="Joshua"  time="1500"  wait="false"  storage="chara/3/joshua_thinking.png"  width="495"  height="720"  left="23"  top="0"  reflect="false"  ]
[chara_show  name="Klaus"  time="1500"  wait="false"  storage="chara/2/klaus.png"  width="495"  height="720"  left="665"  top="0"  reflect="false"  ]
[chara_show  name="Nicola"  time="1500"  wait="false"  storage="chara/5/nicola_neutral.png"  width="495"  height="720"  left="336"  top="0"  reflect="false"  ]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Then how can it be destroyed? [p]
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" time=200 wait=true cross=false]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
...[l]A rocket? [l]
[chara_mod name="Klaus" storage="/chara/2/klaus_angry2.png" time=200 wait=true cross=false]
No. [l]It would just make a big crater in it, and make even more damage because of the debris. [p]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Nobody said anything. [l]We could ask her about more information from it, but did we really need to learn more for now? [l]Accepting that this was real was big enough of a challenge. [l]We were the first five people to discover it. [p]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[current layer="message0"]
[layopt layer="message1" visible=false]

[wait time=2000]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
Let's name it. [p]
[freeimage layer=2]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral2.png" wait=false time=450 cross=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Minutes later, after everyone's been silently looking over the files and pictures of it all, I decided to break the silence. Everyone rose their eyebrows, as if they wanted me to explain myself. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Every meteorite needs a name, right? [l]We're the ones who discovered it, it's our right to name it. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 wait=true cross=false]
...[l]Shouldn't we let G.A.A.S. take care of this...? [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking.png" time=200 wait=true cross=false]
No, I'm with Euphie on this one. [l]We're the ones who discovered it. [l]Not them. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 wait=true cross=false]
...[l]Kodama... [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Nicola seemed to be thinking on her own. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 wait=true cross=false]
What? [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_thinking2.png" time=200 wait=true cross=false]
Kodama... [l]I think I've heard of this before. [l]
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 wait=true cross=false]
It's one of these fantastic spirits we see in folklore, right? [l]What's up with them? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
I just thought... [l]Those colors seem so unnatural. [l]The entire existence of this meteorite is like it's out from fiction. [l]Like it's imaginary, or mystical. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_angry.png" time=200 wait=true cross=false]
...[l]Are you seriously romanticizing our death? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 wait=true cross=false]
No. [l]But you can't deny it feels like it's out of a fairy tale. [p]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_thinking_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
The Kodama Meteorite... [l]That's a nice lead, I guess. [p]
[freeimage layer=2]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 wait=true cross=false]
Feels a bit long, doesn't it? [l]If it's something so important, people should be able to express it more easily. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
How about comet, then? [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_sweat.png" time=200 wait=true cross=false]
This thing's too damn big to be called a comet. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_side_pointing.png" time=200 wait=true cross=false]
Yeah, exactly. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus_confused.png" time=200 wait=true cross=false]
...[l]Uh? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
It's because the contrast between the name and the actual shape is so different that it's easy to remember. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 wait=true cross=false]
Is that supposed to make sense? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
Somehow. [l]You don't think every scientist spends hours naming their discoveries, do you? [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 wait=true cross=false]
...[l]It's not some kind of random discovery, though. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_smile.png" time=200 wait=true cross=false]
Well, do you have a better idea? [p]
[freeimage layer=1]
[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_mod  name="Klaus"  time="500"  cross="false"  storage="chara/2/klaus_closed.png"  ]
[chara_mod  name="Joshua"  time="500"  cross="false"  storage="chara/3/joshua_flustured.png"  ]
[wait  time="500"  ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Guessed so. [l]Let's go with that for now, then. [l]We can always change it later. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_neutral.png" time=200 wait=true cross=false]
Right. [l]Let's go with Kodama Comet for now, then. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
[chara_mod name="Klaus" storage="/chara/2/klaus.png" time=200 wait=true cross=false]
Now, let's contact G.A.A.S. [l]They need to know. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_neutral.png" time=200 wait=true cross=false]
Should we really immediately announce it to them? [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
Why wouldn't we? [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning_pouting.png" time=200 wait=true cross=false]
Think about the consequences. [l]We need to investigate more. [l]Something as important as this is no light matter. [p]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Sure, but that's precisely because it's so important that we need to at least let them know about it. [p]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
...[l]
[chara_mod name="Nicola" storage="/chara/5/nicola_leaning.png" time=200 wait=true cross=false]
What do you think, Euphémia? [p]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Now they want me to lead...? [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[stopbgm  time="6000"  fadeout="true"  ]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
[image storage=default/EuphieSprites/euphie_normal_angry.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
...[l]I think we should keep this to ourselves for now. [l]We need to investigate the Kodama Comet more. [p]
We'll let earth know within the next few days, when we'll have more information on our hands. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Alright. [l]Then it's a secret between us until then. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_thinking.png" time=200 wait=true cross=false]
...[l]Where did Alexeï go? [p]
[image storage=default/EuphieSprites/euphie_thinking_embarassed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Uh? [l]Alexeï? [p]
[freeimage layer=2]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Indeed, Alexeï seemed to have vanished. [p]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

[playbgm   loop="true"  storage="Music/05_-_A_Room_for_Space_-_juneji.ogg"  ]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
...[l]I'll contact him. [l]It's been a long day. [l]I'll take care of this. [p]
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
[chara_mod name="Joshua" storage="/chara/3/joshua_flustured.png" time=200 wait=true cross=false]
I'd like to be alone for a while, if you don't mind. [l]I feel like my head's gonna explode from all of this... [p]
[chara_hide  name="Joshua"  time="1000"  wait="false"  pos_mode="false"  ]
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola_staredown.png" time=200 wait=true cross=false]
Personally, I want to keep checking the meteorite. [l]I'll go back to the observatory. [p]
[image storage=default/EuphieSprites/euphie_normal_speak.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
I'll go with you, Nico. [p]
[freeimage layer=2]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
Alright, but don't push yourselves. [l]You two have been hard at work for hours now. [l]Get some hard earned rest after that. [p]
[image storage=default/EuphieSprites/euphie_normal_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
It won't be long, promise. [p]
[freeimage layer=2]
[chara_hide  name="Klaus"  time="1000"  wait="false"  pos_mode="false"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Action/door1_soft_2.ogg"  ]

[freeimage layer=1][current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Both guys took the elevator, and went their separate ways. [p]

[playse  volume="100"  time="1000"  buf="3"  storage="BGS/elevator_up_outside.ogg"  loop="true"  clear="false"  ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
[chara_mod name="Nicola" storage="/chara/5/nicola.png" time=200 wait=true cross=false]
Let's be going, Euphémia. [p]
[image storage=default/EuphieSprites/euphie_normal_neutral.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Yeah. [p]
[freeimage layer=2]
[freeimage layer=1][stopse  time="250"  buf="3"  fadeout="true"  ]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_hide_all  time="1000"  wait="false"  ]
[playse  volume="100"  time="0"  buf="1"  storage="SoundEffects_Action/door1_soft.ogg"  loop="false"  clear="false"  ]
[bg storage=Backgrounds/bg03_elevators_front.png method=crossfade time=1500 wait=true]

[_tb_end_tyrano_code]

[jump  storage="scene2part7observatory.ks"  target=""  ]
