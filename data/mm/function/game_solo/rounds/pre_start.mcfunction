tag @s remove between_round_delay
function mm:game_solo/stop_delay

execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run fill ~ ~-10 ~ ~ ~-6 ~4 stone

scoreboard players set @s solo_round 1
scoreboard players set @s solo_timer 45

function mm:game_solo/reset_markers
function mm:game_solo/patterns/randomize