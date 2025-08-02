[_tb_system_call storage=system/_config.ks]

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/ok_sound.ogg"  ]
[layopt layer=message0 visible=false]

[layopt layer=message1 visible=false]

[iscript]
// This tiny bit of code was all that is needed to make the config screen adapt to virtually any screen size.
// All button positions and images are multiplied by the calculated ratio.
// The ratio is the actual game resolution divided by the designed IU size.
// This is in chapter 1 of UI design stuff, really.
// NOTE This does count on the back button being 90-ish pixels wide.
// I can't find where to pull it's width to more accurately position it's right edge 20px from the right of the window.
// ============== WARNING ===============
// This solution does not address TyranoScript's inability to properly set the volume of sounds played after config.ks is executed.
tf.ConfigWinX = TG.config.scWidth / 960;
tf.ConfigWinY = TG.config.scHeight / 640;
tf.ConfigBackButtonX =  TG.config.scWidth - 110;
[endscript]

[clearfix]

[free_layermode  time="0"  ]
[reset_camera  time="0"  ]
[iscript]
$(".layer_camera").empty();
[endscript]

[hidemenubutton]

[iscript]
tf.current_bgm_vol=parseInt(TG.config.defaultBgmVolume);
tf.current_se_vol=parseInt(TG.config.defaultSeVolume);
tf.current_ch_speed=parseInt(TG.config.chSpeed);
tf.current_auto_speed=parseInt(TG.config.autoSpeed);
tf.text_skip ="ON";
if(TG.config.unReadTextSkip != true){
tf.text_skip ="OFF";
}
[endscript]

[layopt layer=1 visible=true]

[cm  ]
[bg  storage="bg_config.png"  time="100"  ]
[button  graphic="config/c_btn_back.png"  enterimg="config/c_btn_back2.png"  target="*backtitle"  x="&tf.ConfigBackButtonX"  y="&tf.ConfigWinY*20"  storage=""  ]
[jump  target="*config_page"  storage=""  ]
*config_page

[button  name="bgmvol,bgmvol_10"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*300"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=10"  storage=""  ]
[button  name="bgmvol,bgmvol_20"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*340"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=20"  storage=""  ]
[button  name="bgmvol,bgmvol_30"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*380"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=30"  storage=""  ]
[button  name="bgmvol,bgmvol_40"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*420"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=40"  storage=""  ]
[button  name="bgmvol,bgmvol_50"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*460"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=50"  storage=""  ]
[button  name="bgmvol,bgmvol_60"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*500"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=60"  storage=""  ]
[button  name="bgmvol,bgmvol_70"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*540"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=70"  storage=""  ]
[button  name="bgmvol,bgmvol_80"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*580"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=80"  storage=""  ]
[button  name="bgmvol,bgmvol_90"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*620"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=90"  storage=""  ]
[button  name="bgmvol,bgmvol_100"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*660"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=100"  storage=""  ]
[button  name="bgmvol,bgmvol_0"  fix="true"  target="*vol_bgm_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*780"  y="&tf.ConfigWinY*170"  exp="tf.current_bgm_vol=0"  storage=""  ]
[button  name="sevol,sevol_10"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*300"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=10"  storage=""  ]
[button  name="sevol,sevol_20"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*340"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=20"  storage=""  ]
[button  name="sevol,sevol_30"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*380"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=30"  storage=""  ]
[button  name="sevol,sevol_40"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*420"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=40"  storage=""  ]
[button  name="sevol,sevol_50"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*460"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=50"  storage=""  ]
[button  name="sevol,sevol_60"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*500"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=60"  storage=""  ]
[button  name="sevol,sevol_70"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*540"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=70"  storage=""  ]
[button  name="sevol,sevol_80"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*580"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=80"  storage=""  ]
[button  name="sevol,sevol_90"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*620"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=90"  storage=""  ]
[button  name="sevol,sevol_100"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*660"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=100"  storage=""  ]
[button  name="sevol,sevol_0"  fix="true"  target="*vol_se_change"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*780"  y="&tf.ConfigWinY*220"  exp="tf.current_se_vol=0"  storage=""  ]
[button  name="ch,ch_100"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=100"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*300"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_80"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=80"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*340"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_50"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=50"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*380"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_40"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=40"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*420"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_30"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=30"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*460"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_25"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=25"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*500"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_20"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=20"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*540"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_11"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=11"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*580"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_8"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=8"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*620"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  name="ch,ch_5"  fix="true"  target="*ch_speed_change"  exp="tf.set_ch_speed=5"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*660"  y="&tf.ConfigWinY*290"  storage=""  ]
[button  fix="true"  name="auto,auto_5000"  target="*auto_speed_change"  exp="tf.set_auto_speed=5000;tf.text_auto=0"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*300"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_4500"  target="*auto_speed_change"  exp="tf.set_auto_speed=4500;tf.text_auto=1"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*340"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_4000"  target="*auto_speed_change"  exp="tf.set_auto_speed=4000;tf.text_auto=2"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*380"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_3500"  target="*auto_speed_change"  exp="tf.set_auto_speed=3500;tf.text_auto=3"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*420"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_3000"  target="*auto_speed_change"  exp="tf.set_auto_speed=3000;tf.text_auto=4"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*460"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_2500"  target="*auto_speed_change"  exp="tf.set_auto_speed=2500;tf.text_auto=5"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*500"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_2000"  target="*auto_speed_change"  exp="tf.set_auto_speed=2000;tf.text_auto=6"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*540"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_1000"  target="*auto_speed_change"  exp="tf.set_auto_speed=1000;tf.text_auto=7"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*580"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_800"  target="*auto_speed_change"  exp="tf.set_auto_speed=800;tf.text_auto=8"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*620"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  fix="true"  name="auto,auto_500"  target="*auto_speed_change"  exp="tf.set_auto_speed=500;tf.text_auto=9"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*35"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*660"  y="&tf.ConfigWinY*340"  storage=""  ]
[button  name="unread_off"  fix="true"  target="*skip_off"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*125"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*300"  y="&tf.ConfigWinY*420"  storage=""  ]
[button  name="unread_on"  fix="true"  target="*skip_on"  graphic="config/c_btn.png"  width="&tf.ConfigWinX*125"  height="&tf.ConfigWinY*35"  x="&tf.ConfigWinX*435"  y="&tf.ConfigWinY*420"  storage=""  ]
[iscript]
$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");
$(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");
$(".ch_"+tf.current_ch_speed).attr("src","data/image/config/c_set.png");
$(".auto_"+tf.current_auto_speed).attr("src","data/image/config/c_set.png");
if(tf.text_skip == 'OFF'){
$(".unread_off").attr("src","data/image/config/c_uts_off.png");
}else{
$(".unread_on").attr("src","data/image/config/c_uts_on.png");
}
[endscript]

[s  ]
*backtitle

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/cancel_sound.ogg"  ]
[cm  ]
[layopt layer=message1 visible=false]

[freeimage layer=1]

[clearfix]

[wait_cancel]

[awakegame]

*vol_bgm_change

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[iscript]
$(".bgmvol").attr("src","data/image/config/c_btn.png");
$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");
[endscript]

[bgmopt volume="&tf.current_bgm_vol"]

[return  ]
*vol_se_change

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[iscript]
$(".sevol").attr("src","data/image/config/c_btn.png");
$(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");
[endscript]

[seopt volume="&tf.current_se_vol"]

[return  ]
*ch_speed_change

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[iscript]
$(".ch").attr("src","data/image/config/c_btn.png");
$(".ch_"+tf.set_ch_speed).attr("src","data/image/config/c_set.png");
[endscript]

[configdelay speed="&tf.set_ch_speed"]

[position layer=message1 left=&tf.ConfigWinX*40 top=&tf.ConfigWinY*490 width=&tf.ConfigWinX*880 height=&tf.ConfigWinY*110 page=fore visible=true opacity=0]

[layopt layer=message1 visible=true]

[current layer=message1]

[iscript]
tf.system.backlog.pop(); // 上の「このスピードで表示されます」のテキストを履歴から削除 Delete text above "Show at this speed" text
[endscript]

[wait  time="200"  ]
[er]

[layopt layer=message1 visible=false]

[return  ]
*auto_speed_change

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[iscript]
$(".auto").attr("src","data/image/config/c_btn.png");
$(".auto_"+tf.set_auto_speed).attr("src","data/image/config/c_set.png");
[endscript]

[autoconfig speed="&tf.set_auto_speed"]

[return  ]
*skip_off

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[iscript]
$(".unread_off").attr("src","data/image/config/c_uts_off.png");
$(".unread_on").attr("src","data/image/config/c_btn.png");
tf.text_skip="OFF";
[endscript]

[config_record_label skip=false]

[return  ]
*skip_on

[playse  volume="100"  time="1000"  buf="0"  storage="SoundEffects_Menu/check.ogg"  ]
[iscript]
$(".unread_off").attr("src","data/image/config/c_btn.png");
$(".unread_on").attr("src","data/image/config/c_uts_on.png");
tf.text_skip="ON";
[endscript]

[config_record_label skip=true]

[return  ]
