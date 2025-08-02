[_tb_system_call storage=system/_test.ks]

[bg  time="0"  method="crossfade"  storage="Backgrounds/bg00_space.png"  ]
[tb_start_tyrano_code]
[position layer="message1" width=1280 height=720 top=0 left=0 marginl=250 margint=80 marginr=270 color=black opacity=130]
[tb_show_message_window ]

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=true]
[image storage=default/UI_Elements/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSpritesSuitHelmetOn/euphie_suit_helmeton_normal.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
This is Euphie's dialogue[p]
[freeimage layer=3]
[freeimage layer=2]
[image storage=default/Com_Klaus/klaus_com_suit_normal.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/UI_Elements/stellar_ui_chat_filter_border.png layer=3 x=35 y=458 visible=true time=0 width=181 height=217]
[playse storage=SoundEffects_Action/com_sfx.ogg loop=false clear=false layer=1]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
This is Klaus' dialogue[p]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
This is the end of the COMS [p]


[_tb_end_tyrano_code]

[chara_show  name="Joshua"  time="500"  wait="false"  storage="chara/3/joshua.png"  width="495"  height="720"  left="390"  top="0"  reflect="false"  ]
[tb_start_text mode=1 ]
Hey ladies. test [l]yall mind if i...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
hee hee[p]
[_tb_end_text]

[chara_show  name="Komaeda"  time="1000"  wait="false"  storage="chara/8/time.png"  width="546"  height="597"  left="349"  top="17"  reflect="false"  ]
[tb_start_text mode=1 ]
Ah merde t'es venu me buter ça fait un peu chier mec.[p]
tu veux me buter combien de fois du coup[p]
[_tb_end_text]

[glink  color="black"  storage="test.ks"  size="20"  target="*Une_fois_ça_suffit"  text="Une&nbsp;fois&nbsp;ça&nbsp;suffit"  x="493"  y="276"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="test.ks"  size="20"  target="*Deux_fois_stp"  text="Deux&nbsp;fois&nbsp;stp"  x="507"  y="342"  width=""  height=""  _clickable_img=""  ]
[s  ]
*Une_fois_ça_suffit

[tb_eval  exp="f.komaedakill+=1"  name="komaedakill"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
*Deux_fois_stp

[tb_eval  exp="f.komaedakill+=2"  name="komaedakill"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
*komaedacompte

[tb_start_text mode=1 ]
très bien maintenant laisse moi compter[p]
[_tb_end_text]

[jump  storage="test.ks"  target="*1fois"  cond="f.komaedakill==1"  ]
[jump  storage="test.ks"  target="*2fois"  cond="f.komaedakill==2"  ]
*1fois

[tb_start_text mode=1 ]
je suis mort 1 fois bof[p]
[_tb_end_text]

[s  ]
*2fois

[tb_start_text mode=1 ]
je suis mort 2 fois ah ouais propre pas mal[p]
[_tb_end_text]

[s  ]
[tb_image_show  time="0"  storage="default/EuphieSprites/stellar_ui_chat2big.png"  width="181"  height="217"  x="35"  y="458"  _clickable_img=""  name="img_21"  ]
[tb_start_text mode=1 ]
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
My name is donk and i love to honk[p]
[_tb_end_text]

[tb_image_show  time="0"  storage="default/EuphieSprites/euphie02_neutral.png"  width="181"  height="217"  x="35"  y="458"  _clickable_img=""  name="img_4"  ]
[tb_start_tyrano_code]
---------------------------------
ADV STYLE
---------------------------------

[image storage=default/EuphieSprites/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[image storage=default/EuphieSprites/euphie03_smile.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Dialogue [p]

[freeimage layer=2]

#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>
Dialogue [p]

[image storage=default/EuphieSprites/euphie08_embarassed.png layer=2 x=35 y=458 visible=true time=0 width=181 height=217]

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Dialogue [p]

[freeimage layer=2]
[freeimage layer=1]

---------------------------------
SNL STYLE
---------------------------------

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font face="earthorbiter"><font color=""></font>
Dialogue

[current layer="message0"]
[layopt layer="message1" visible=false]
[layopt layer="message0" visible=false]


---------------------------------
DIALOGUE COLORS
---------------------------------

#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
#<font face="earthorbiter"><font color="#cc66ff">Klaus</font>
#<font face="EarthOrbiter"<font color="#ffcc33">Joshua</font>
#<font face="EarthOrbiter"<font color="#66ccff">Alexeï</font>
#<font face="EarthOrbiter"<font color="#85e085">Nicola</font>

---------------------------------
OTHER COMMANDS
---------------------------------

[chara_mod name="Klaus" storage="/chara/2/klaus_closed.png" wait=false time=450 cross=false]
[bg storage=Backgrounds/bg04_elevators_inside.png method=crossfade time=1000 wait=false]
[image storage=default/EuphieSprites/stellar_ui_chat2big.png layer=1 x=35 y=458 visible=true time=0 width=181 height=217]
[freeimage layer=1]

[playbgm storage="/music/What_a_Day_Scramel.ogg"]
[stopbgm]
[fadeoutbgm time=3000]
[playse storage=SoundEffects_Action/door1_soft_2.ogg loop=false clear=false layer=3]
[playse storage=BGS/elevator_up.ogg loop=true clear=false layer=3]
[stopse]
[fadeoutse time=2000 layer=3]

---------------------------------
SNL DENSE DIALOGUES
---------------------------------

<font color="#85e085">Nicola:</font> Well at least, you’ve got good fashion sense![l] Maybe I should get into working out too, to get a sweet and slender body like yours![l][r][r]She’s one bold gal... As she sat down on her bed, a little tin looking item dropped onto the floor.

---------------------------------
TEXTBOX PLACEMENT
---------------------------------

[position layer="message1" width=800 height=550 top=70 left=250 marginl=25 margint=35 marginr=25 color=black opacity=160]
[_tb_end_tyrano_code]

