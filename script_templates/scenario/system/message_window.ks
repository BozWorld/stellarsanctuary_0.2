;メッセージレイヤの定義

		[position width=1138 height=255 top=426 left=30 ]


		
			[position page=fore frame="window5.png" margint=75 marginl=232 marginr=40 marginb=14 vertical=false ]
		

		[ptext name="chara_name_area" layer="message0" color=0xfafafa size=34 x=289 y=435 bold="bold" edge="undefined" shadow="undefined"]

		;キャラクターの表示モードに関する定義
		[chara_config ptext="chara_name_area" pos_mode=true time="450" memory="false" anim="true" effect="easeInQuad" pos_change_time="600" ]

		;キャラクターフォーカスなど
		[chara_config  talk_focus="none" ]

		;クリック待ちボタンについて
		[glyph fix="false" left="0" top="0" ]

		

            
            [button role="save" graphic="user_interface/save.png" x="1195" y="460" width="48" height="49" visible="false" ]
            

        

            
            [button role="load" graphic="user_interface/load.png" x="1195" y="515" width="48" height="49" visible="false" ]
            

        

            
            [button role="title" graphic="user_interface/title.png" x="1195" y="570" width="48" height="49" visible="false" ]
            

        

            
            [button role="menu" graphic="user_interface/menu.png" x="1195" y="20" width="48" height="49" visible="false" ]
            

        

            
            [button role="window" graphic="button/hide.png" x="1195" y="240" width="48" height="49" visible="false" ]
            

        

            
            [button role="skip" graphic="user_interface/skip.png" x="1195" y="185" width="48" height="49" visible="false" ]
            

        

            
            [button role="fullscreen" graphic="user_interface/fullscreen.png" x="1195" y="295" width="48" height="49" visible="false" ]
            

        

            
            [button role="auto" graphic="user_interface/auto.png" x="1195" y="130" width="48" height="49" visible="false" ]
            

        

            
            [button role="sleepgame" graphic="user_interface/config.png" x="1195" y="625" width="48" height="49" visible="false" storage="config.ks"]
            

        

            
            [button role="backlog" graphic="user_interface/backlog.png" x="1195" y="75" width="48" height="49" visible="false" ]
            

        

		;CG・回想用の共通項目
		[eval exp="sf._tb_cg_noimage='gallery_thumbnails/unknown.png'" ]
		[eval exp="sf._tb_replay_noimage='noimage.png'" ]

		