[_tb_system_call storage=system/_scene2part1dorms.ks]

[tb_hide_message_window  ]
[cm  ]
[playse  volume="70"  time="1000"  buf="0"  storage="SoundEffects_Menu/chapter.ogg"  ]
[save_img  storage="Chapters/chapter2_onomber_210.png"  ]
[tb_image_show  time="1000"  storage="default/Chapters/chapter_2_begin.png"  width="1280"  height="720"  name="img_4"  ]
[tb_ptext_show  x="217"  y="344"  size="100"  color="0xf2f2f2"  time="2000"  text="Orbital&nbsp;melody"  face="earthorbiter"  edge="0x050505"  shadow="undefined"  anim="true"  fadeout="true"  wait="false"  in_effect="fadeInLeft"  out_effect="fadeOutRight"  ]
[wait  time="2500"  ]
[tb_image_hide  time="1000"  ]
[wait  time="1000"  ]
[playbgm  time="1000"  loop="true"  storage="BGS/war.ogg"  fadein="true"  ]
[wait  time="2000"  ]
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

A terrible sight. [l]Lines of dead soldiers lie on the ground. [l]Their fighting spirit, burning with passion minutes ago, are long gone now. [l]All that remains are the corpses of those dead ideals. [l][r][r]The ominous air is like a poisonous gas, slowly driving the remnant soldiers insane the longer they stay alive. [l]All I could do was hold onto my own rifle, cowering in fear in the trench. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg  time="1000"  method="crossfade"  storage="Backgrounds/TeddyWarBG.png" wait=false]
[tb_image_show  time="1000"  storage="default/Effects/fog.png"  width="1920"  height="1080"  name="img_16" wait=true]

[wait  time="500"  ]
[chara_show  name="Teddy1"  time="250"  wait="false"  storage="chara/6/teddy1.png"  width="544"  height="676"  ]
[quake  time="600"  count="3"  hmax="10"  wait="true"]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ What are you doing, soldier?![l][r][r] The commander’s voice woke me out of my thoughts. [l][r][r]
[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_  I won’t let young blood like yours die in vain! [l]Hang in there, the reinforcements should be there any moment![p]

[chara_show  name="Teddy2"  time="700"  wait="false"  storage="chara/7/teddy2.png"  width="393"  height="683"  ]
[font  size="25"  color="0xdfff80"  face="JandaAppleCobbler"  bold="true"  ]
Bear Gils:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ Sir! [l][r][r]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ What is it, now?! [l][r][r]

[font  size="25"  color="0xdfff80"  face="JandaAppleCobbler"  bold="true"  ]
Bear Gils:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ The reinforcements, sir...[l] They... [l]They’re not coming! [l][r][r]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ What’re ye saying now, kid?! [l][r][r]

[font  size="25"  color="0xdfff80"  face="JandaAppleCobbler"  bold="true"  ]
Bear Gils:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ They’ve been ambushed![l] We're... [l]We’re on our own... [l][r][r]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ Darn it! [l]What in tarnation! [p]

[stopbgm  time="1500"  fadeout="true"  ]

Nearby, another young soldier was weeping over the death of his companion.[l] The chief glared at them for a while, before grabbing his gun. [p]
[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ Soldiers... [l][r][r] The glare of the commander was determined. [l]Like his last resort, he held onto his weapon as his life depended on it, looking out over the trench.[p]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playbgm  time="1000"  loop="true"  storage="Music/Symphony_No_9_4th_Movement.ogg"  ]
[chara_hide  name="Teddy2"  time="500"  wait="true"  pos_mode="true"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ You! [l][r][r] The commander pointed at me. [l]I’m taken aback. [l][r][r]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ Pull on my tail. [l]Then grab onto me. [l]And hold on tight, kid! [p]

[tb_image_hide  time="0"  ]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[chara_hide  name="Teddy1"  time="500"  wait="false"  pos_mode="true"  ]
[bg  storage="black.png"  time="1000"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

#<font color=""></font>
Without thinking, I simply pull on the tail of his back. [l]Suddenly...[l] The Commander grew in size. [l]Like a balloon, he just became bigger, bigger, and rounder, rounder...[l] He couldn’t stop growing. [l] I tried to hold onto his neck as much as I could, however it proved to be difficult. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse  volume="66"  time="1000"  buf="5"  storage="BGS/war.ogg"  loop="true"  ]
[bg  time="1000"  method="fadeIn"  storage="cg/teddycg1.png"  ]
[wait  time="1000"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

The enemies on the opposite trench tried to shoot him. [l]But every single bullet, all made of hard sugar, just bounced off his gigantic tummy. [p]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ Kid! [l][r][r] The commander called out to me. [l][r][r]
[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ We’re gonna win this war, you hear that?! [l]Counting on ‘ya! [p]
#<font color=""></font>
I didn’t know what he meant by counting on me, but I’m holding on tight, witnessing the overgrowth of this now gigantic commander. [l]The enemy frontline kept pressuring him, bringing on the greatest and most dangerous of weapons. [l][r][r]But as expected... [l]They just bounced off him. [l]He was too strong. [l]No matter what they had in store for him, the commander was sure to block them off. [p]
Completely unfazed by the armageddon raining down on him, the commander made his move. [l]He slowly lifts his right leg above... [l]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg  time="250"  method="fadeInDown"  storage="cg/teddycg2.png" wait=false]
[playse  volume="70"  time="1000"  buf="0"  storage="SoundEffects_Action/earth_shatter.ogg"]
[fadeoutse time=300 buf=5]
[quake  time="1000"  count="5"  hmax=""  wait="true"  vmax="30"]
[wse]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

And crashes it down. [l]For the commander, it was the simple act of walking, advancing towards an objective. [l]But to the enemies, this must have felt like a warning. [l]An ominous sight of impending death, slowly reaching them. [p]
One step of this giant fluffy mad bear was enough to shake the ground down to the core of the earth. [l]Anyone underneath would get their bones and insides crushed instantly, if their miserable fates were to be right below those giant pads. [l]

[stopse  time="2500"  buf="0"  fadeout="true"  ]
[bg  time="500"  method="fadeIn"  storage="cg/teddycg1.png" wait=false]

As they slowly realized this, most of the soldiers stopped trying to fire at will, and started running away for their lives. [l]Oh, they knew doom was near. [l]But no matter how far you run away from it, it would soon catch up. [p]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ Damn you all! [l]Let me unleash my wrath upon you vermins!! [l][r][r]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg  time="100"  method="fadeInDown"  storage="cg/teddycg3.png" wait=false]
[playse  volume="60"  time="1000"  buf="0"  storage="SoundEffects_Action/earth_shatter.ogg"  ]
[quake  time="1000"  count="5"  hmax=""  wait="true"  vmax="30"  ]
[wse]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

The commander threw his fist down on the ground. [l]A cacophony. [l]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse  volume="50"  time="1000"  buf="1"  storage="SoundEffects_Action/earth_shatter.ogg"  ]
[quake  time="1000"  count="5"  hmax=""  wait="true"  vmax="30"  ]
[wse]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
[r][r]Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ I will not let a single one of you survive! [p]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg  time="700"  method="vanishIn"  storage="black.png" wait=false]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

As the soldiers were all still in midair, the commander’s right arm suddenly transformed into a giant, thin-sharp candy cane. [l][r][r]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[bg  time="200"  method="fadeInRight"  storage="cg/teddycg4.png" wait=false]
[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Action/Slash.ogg"  ]
[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[wait  time="800"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

Like a sword, he immediately slashed in the direction of the hovering foes. [l]Or did he really slice them? [l]The action was too fast, too blurry, too strong for the simple sight of any sane person. [l]You couldn’t even see his body move. [l]The slash was so fast, you could not even see the sword flinch. [p]

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Action/Water_Wave.ogg"  loop="false"  ]
[stopbgm  time="5000"  fadeout="true"  ]
[image storage=default/CG/teddycg5.jpg layer=1 x=0 y=0 visible=true time=500 width=1280 height=720]

Suddenly, the many fluffy soldiers just exploded in a tsunami of cotton candy. [l]Their life force gone, their fluffy pink insides flew out of their bisected bodies. [l]They fell on the ground like puppets from which you would have cut the strings off. [l][r][r]The dead, grey, and desolate soil of the earth was now covered by an ocean of pink goodness, which slowly filled up the world with no sign of stopping. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[playse storage=BGS/Water_current.ogg loop=true clear=false layer=5]
[bg  time="2000"  method="crossfade"  storage="black.png"  ]
[freeimage layer=1 @trans time=2000]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

[font  size="25"  color="0xd98c8c"  face="JandaAppleCobbler"  bold="true"  ]
Col. Teddy:
[font  size="35"  color="0xffffff"  face="playtime"  bold="false"  ]
_ It seems... [l]This is as far as we can go, kid... [p]


[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[wait  time="1500"  ]
[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

The scene was desperate. [l]I was still holding on to my life from the back of the giant commander, seeing the level of the pink ocean slowly rise up to submerge his entire body. [l]There were nobody else but us two. [l]No allies, nor enemies on sight. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[tb_image_show  time="1000"  storage="default/CG/pinksky.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_48"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

I look up at the sky, hoping for a better outcome. [l]All I could process was the colour of the sky, becoming more and more pink as the cotton candy ocean became larger and larger. [l]Soon, this world might come to an end. [l]A far worse outcome than us, losing this war... [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[tb_image_show  time="1000"  storage="default/CG/PinkSkyBalls1.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_48"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

Blinded by the sun’s rays, i realized small dots were appearing, and becoming bigger and bigger. [l][r][r]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[tb_image_show  time="1000"  storage="default/CG/PinkSkyBalls2.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_48"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

Then they ceased to look black, but colored. [l]And bigger. [l]And in many forms. [l]It was the end. [l]The ragnarok. [l]Candy was now falling down from the sky, to bring down death to the few remaining life forms on there. [p]

[current layer="message0"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]

[tb_image_show  time="1000"  storage="default/CG/PinkSkyBalls3.jpg"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_48"  ]

[current layer="message1"]
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=true]

The cotton candy was now reaching for my feet. [l]And this giant ball of delicious looking candy... [l]Is about to fall on my head. [p]

[_tb_end_tyrano_code]

[jump  storage="scene2part2wakingup.ks"  target=""  ]
