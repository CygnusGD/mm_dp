tag @s remove sp1
tag @s remove sp2
tag @s remove sp3
tag @s remove sp4
tag @s remove in_solo_game
tag @s remove between_round_delay
tag @s remove delay_active
tag @s remove personal_timer_active
tag @s remove solo_countdown_3
tag @s remove solo_countdown_2
tag @s remove solo_countdown_1
tag @s remove solo_countdown_go
tag @s remove in_solo_round
tag @s remove back_to_lobby_delay
tag @s remove lost_solo_game
team leave @s
function mm:game_solo/update_player_count
function mm:game_solo/stop_delay

title @s actionbar ""
tp @s 0.5 64 0.5 0 0
function mm:lobby/reset_gm
clear @s
function mm:general/give_book

execute if score $life_count data matches 10 run attribute @s minecraft:max_health base set 20
execute if score $life_count data matches 7 run attribute @s minecraft:max_health base set 14
execute if score $life_count data matches 5 run attribute @s minecraft:max_health base set 10
execute if score $life_count data matches 4 run attribute @s minecraft:max_health base set 8
execute if score $life_count data matches 3 run attribute @s minecraft:max_health base set 6
execute if score $life_count data matches 2 run attribute @s minecraft:max_health base set 4
execute if score $life_count data matches 1 run attribute @s minecraft:max_health base set 2

effect give @s minecraft:regeneration 1 255 true