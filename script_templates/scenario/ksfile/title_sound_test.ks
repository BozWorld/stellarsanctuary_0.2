[_tb_system_call storage=system/_title_sound_test.ks]

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/ok_sound.ogg"  ]
[tb_image_hide  time="1000"  ]
[stopbgm  time="500"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="bg_soundtest.png"  ]
*music_choice

[glink  color="blue"  storage="title_sound_test.ks"  size="20"  text="The&nbsp;Luminary&nbsp;Station"  x="622"  y="183"  width=""  height=""  _clickable_img=""  target="*Luminary"  ]
[glink  color="blue"  storage="title_sound_test.ks"  size="20"  text="Gazing&nbsp;From&nbsp;Orbit"  x="634"  y="256"  width=""  height=""  _clickable_img=""  target="*Gazing_from_Orbit"  ]
[glink  color="red"  storage="title_sound_test.ks"  size="20"  text="Space&nbsp;Confessional"  x="28"  y="183"  width=""  height=""  _clickable_img=""  target="*Space"  ]
[glink  color="red"  storage="title_sound_test.ks"  size="20"  text="A&nbsp;Room&nbsp;For&nbsp;Space"  x="36"  y="256"  width="160"  height="20"  _clickable_img=""  target="*A_Room_For_Space"  ]
[glink  color="red"  storage="title_sound_test.ks"  size="20"  text="Non&nbsp;Pilot&nbsp;Journey"  x="35"  y="326"  width=""  height=""  _clickable_img=""  target="*Non_Pilot"  ]
[glink  color="green"  storage="title_sound_test.ks"  size="20"  text="What&nbsp;a&nbsp;Day!"  x="370"  y="183"  width=""  height=""  _clickable_img=""  target="*What_a_day"  ]
[glink  color="green"  storage="title_sound_test.ks"  size="20"  text="Sealed&nbsp;Seclusion"  x="348"  y="256"  width=""  height=""  _clickable_img=""  target="*Sealed"  ]
[glink  color="gray"  storage="title_sound_test.ks"  size="20"  text="Comfortable&nbsp;Void"  x="966"  y="183"  width=""  height=""  _clickable_img=""  target="*04_-_Comfortable_Void_-_postblankvoid"  ]
[glink  color="gray"  storage="title_sound_test.ks"  size="20"  text="Phantoms"  x="998"  y="256"  width=""  height=""  _clickable_img=""  target="*Phantoms"  ]
[glink  color="gray"  storage="title_sound_test.ks"  size="20"  text="Inner&nbsp;Disorder"  x="980"  y="327"  width=""  height=""  _clickable_img=""  target="*Inner_Disorder"  ]
[glink  color="gray"  storage="title_sound_test.ks"  size="20"  text="Petrified"  x="1007"  y="397"  width=""  height=""  _clickable_img=""  target="*10_-_Petrified_-_postblankvoid.ogg"  ]
[button  storage="title_sound_test.ks"  target="*backtitle"  graphic="config/c_btn_back.png"  width="90"  height="90"  x="1180"  y="625"  _clickable_img=""  ]
[s  ]
*Luminary

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/The_Luminary_Station.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
*Gazing_from_Orbit

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/Gazing_from_orbit.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
*Space

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/03_-_Space_Confessional_-_juneji.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/Sealed_Seclusion.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
*A_Room_For_Space

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="0"  loop="true"  storage="Music/05_-_A_Room_for_Space_-_juneji.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
*Non_Pilot

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/09_-_Non_Pilot_Journey_-_juneji.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
*What_a_day

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/What_a_Day_Scramel.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
*Sealed

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/Sealed_Seclusion.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
[s  ]
*04_-_Comfortable_Void_-_postblankvoid

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/04_-_Comfortable_Void_-_postblankvoid.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
*Phantoms

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/07_-_Phantoms_-_postblankvoid.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
*Inner_Disorder

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/01_-_Inner_Disorder_-_postblankvoid.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
[s  ]
*10_-_Petrified_-_postblankvoid.ogg

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Music/10_-_Petrified_-_postblankvoid.ogg"  fadein="false"  ]
[jump  storage="title_sound_test.ks"  target="*music_choice"  ]
*backtitle

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/cancel_sound.ogg"  ]
[cm  ]
[bg  time="500"  method="crossfade"  storage="white.png"  ]
[jump  storage="title_screen.ks"  target=""  ]
[cm  ]
