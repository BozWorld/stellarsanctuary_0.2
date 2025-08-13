[_tb_system_call storage=system/_title_screen.ks]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[playbgm storage="/Music/00_-_Chaos_Theory_-_Scramel.ogg" ]
[_tb_end_tyrano_code]

[bg  storage="Backgrounds/big_01_space_g1.png"  cross="false"  ]
*title

[tb_start_tyrano_code]
[image storage=default/Title_Screen/Logo.png layer=0 visible=true time=1000 wait=true x=49 y=35 width=1182 height=322]
[wait time=500]
[image storage=default/Title_Screen/prototype.png layer=0 visible=true time=1000 wait=false x=5 y=691  width=184 height=18 ]
[clickable  storage="title_screen.ks"  x="473"  y="389"  width="284"  height="52"  target="*start"  _clickable_img=""  ]
[image storage=default/Title_Screen/start.png layer=0 visible=true time=1000 wait=false x=473 y=389 width=284 height=52 ]
[clickable  storage="title_screen.ks"  x="423"  y="455"  width="375"  height="54"  target="*load"  _clickable_img=""  ]
[image storage=default/Title_Screen/continue.png layer=0 visible=true time=1000 wait=false x=423 y=455 width=375 height=54]
[clickable  storage="title_screen.ks"  x="485"  y="520"  width="244"  height="55"  target="*music"  _clickable_img=""  ]
[image storage=default/Title_Screen/music.png layer=0 visible=true time=1000 wait=false x=485 y=520 width=244 height=55]
[clickable  storage="title_screen.ks"  x="426"  y="584"  width="365"  height="52"  target="*gallery"  _clickable_img=""  ]
[image storage=default/Title_Screen/gallery.png layer=0 visible=true time=1000 wait=false x=426 y=584 width=365 height=52 ]
[clickable  storage="title_screen.ks"  x="1206"  y="1"  width="67"  height="58"  target="*quit"  _clickable_img=""  ]
[image storage=default/Title_Screen/quit.png layer=0 visible=true time=1000 wait=false x=1206  y=1 width=67 height=58]
[clickable  storage="title_screen.ks"  x="1209"  y="649"  width="80"  height="55"  target="*fullscreen"  _clickable_img=""  ]
[image storage=default/Title_Screen/fullscreen.png layer=0 visible=true time=1000 wait=true x=1209 y=649 width=60 height=60]

[_tb_end_tyrano_code]

[s  ]
*start

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/New_game_sound_effect.ogg"  ]
[stopbgm  time="1000"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage time=250 layer=0 ]
[_tb_end_tyrano_code]

[tb_image_hide  time="1000"  ]
[wait  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="black.png"  ]
[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]
*load

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/ok_sound.ogg"  ]
[tb_start_tyrano_code]
[freeimage time=250 layer=0 ]
[showload]
[_tb_end_tyrano_code]

[jump  target="*title"  storage=""  ]
[s  ]
*music

[tb_start_tyrano_code]
[freeimage time=250 layer=0 ]
[_tb_end_tyrano_code]

[jump  storage="title_sound_test.ks"  target=""  ]
[s  ]
*gallery

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/ok_sound.ogg"  ]
[tb_start_tyrano_code]
[freeimage time=250 layer=0 ]
[_tb_end_tyrano_code]

[jump  storage="gallery.ks"  target=""  ]
*fullscreen

[tb_start_tyrano_code]
[screen_full]
[_tb_end_tyrano_code]

[jump  target="*title"  storage=""  ]
[s  ]
*quit

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/cancel_sound.ogg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[freeimage layer=0  time=500]
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="black.png"  ]
[tb_start_tyrano_code]
[close ask=false]
[_tb_end_tyrano_code]

[s  ]
