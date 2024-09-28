execute as @a[tag=in_solo_game,tag=delay_active] run scoreboard players add @s solo_delay 1

execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_3] if score @s solo_delay matches 140.. run function mm:game_solo/rounds/countdown/3
execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_2] if score @s solo_delay matches 160.. run function mm:game_solo/rounds/countdown/2
execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_1] if score @s solo_delay matches 180.. run function mm:game_solo/rounds/countdown/1
execute as @a[tag=in_solo_game,tag=delay_active,tag=solo_countdown_go] if score @s solo_delay matches 200.. run function mm:game_solo/rounds/start

execute as @a[tag=in_solo_game,tag=delay_active,tag=between_round_delay] if score @s solo_delay matches 100.. run function mm:game_solo/rounds/pre_start

execute as @a[tag=in_solo_game,tag=sp1] at @e[type=marker,tag=solo_1] run function mm:game_solo/patterns/check
execute as @a[tag=in_solo_game,tag=sp2] at @e[type=marker,tag=solo_2] run function mm:game_solo/patterns/check
execute as @a[tag=in_solo_game,tag=sp3] at @e[type=marker,tag=solo_3] run function mm:game_solo/patterns/check
execute as @a[tag=in_solo_game,tag=sp4] at @e[type=marker,tag=solo_4] run function mm:game_solo/patterns/check