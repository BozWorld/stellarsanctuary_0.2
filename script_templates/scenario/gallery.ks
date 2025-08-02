[_tb_system_call storage=system/_gallery.ks]

[tb_clear_images]

[mask  time="200"  ]
[button  graphic="button/title.png"  storage="gallery.ks"  target="*title"  time="1"  width="70"  height="70"  x="1144"  y="602"  _tb_parts_type="button"  ]
[tb_cg_image_button  graphic="gallery_thumbnails/space.png"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="240"  height="135"  x="100"  y="100"  _tb_parts_type="cg_image_button"  id="Space"  ]

[tb_cg_image_button  graphic="gallery_thumbnails/cg1.png"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="240"  height="135"  x="600"  y="100"  _tb_parts_type="cg_image_button"  id="CG1"  ]

[tb_cg_image_button  graphic="gallery_thumbnails/cg2.png"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="240"  height="135"  x="850"  y="100"  _tb_parts_type="cg_image_button"  id="CG2"  ]

[tb_cg_image_button  graphic="gallery_thumbnails/bg2.png"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="240"  height="135"  x="350"  y="100"  _tb_parts_type="cg_image_button"  id="BG2"  ]

[mask_off  time="200"  ]
[s  ]
*title

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/cancel_sound.ogg"  ]
[tb_clear_images]

[tb_image_hide  time="0"  ]
[cm  ]
[jump  storage="title_screen.ks"  target="*title"  ]
[cm  ]
