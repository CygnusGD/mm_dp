execute as @a[tag=in_solo_game,tag=delay_active] run scoreboard players add @s solo_delay 1

execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_3] if score @s solo_delay matches 140.. run function mm:game_solo/rounds/countdown/3
execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_2] if score @s solo_delay matches 160.. run function mm:game_solo/rounds/countdown/2
execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_1] if score @s solo_delay matches 180.. run function mm:game_solo/rounds/countdown/1
execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_go] if score @s solo_delay matches 200.. run function mm:game_solo/rounds/start

execute as @a[tag=in_solo_game,tag=delay_active,tag=between_round_delay] if score @s solo_delay matches 100.. run function mm:game_solo/rounds/pre_start

execute as @a[tag=back_to_lobby_delay] if score @s solo_delay matches 100.. run function mm:game_solo/exit

execute as @a[tag=in_solo_game,tag=sp1] at @e[type=marker,tag=solo_1] run function mm:game_solo/patterns/check
execute as @a[tag=in_solo_game,tag=sp2] at @e[type=marker,tag=solo_2] run function mm:game_solo/patterns/check
execute as @a[tag=in_solo_game,tag=sp3] at @e[type=marker,tag=solo_3] run function mm:game_solo/patterns/check
execute as @a[tag=in_solo_game,tag=sp4] at @e[type=marker,tag=solo_4] run function mm:game_solo/patterns/check

execute as @a[tag=in_solo_game] if entity @s[tag=in_solo_round] run scoreboard players add @s solo_timer_counter 1
execute as @a[tag=in_solo_game] if entity @s[tag=in_solo_round] if score @s solo_timer_counter matches 20.. run scoreboard players remove @s solo_timer 1
execute as @a[tag=in_solo_game] if entity @s[tag=in_solo_round] if score @s solo_timer_counter matches 20.. run scoreboard players set @s solo_timer_counter 0
execute as @a[tag=in_solo_game] if entity @s[tag=in_solo_round] run title @s actionbar [{"score":{"name":"@s","objective":"solo_timer"}},{"text":" seconds remaining..."}]

#execute if score $timer data matches ..0 unless score $time_out_has_happened data matches 1.. run function mm:game/time_out/time_out
execute as @a[tag=in_solo_game,tag=!lost_solo_game] if score @s solo_timer matches ..0 run function mm:game_solo/rounds/end/lose

#fast items
execute as @e[type=item,x=193,y=60,z=41,dx=6,dy=20,dz=8] run tp @s @a[tag=sp1,limit=1]
execute as @e[type=item,x=193,y=60,z=51,dx=6,dy=20,dz=8] run tp @s @a[tag=sp2,limit=1]
execute as @e[type=item,x=185,y=60,z=41,dx=6,dy=20,dz=8] run tp @s @a[tag=sp3,limit=1]
execute as @e[type=item,x=185,y=60,z=51,dx=6,dy=20,dz=8] run tp @s @a[tag=sp4,limit=1]
execute as @e[type=item,x=185,y=60,z=41,dx=20,dy=20,dz=20] run data modify entity @s PickupDelay set value 0