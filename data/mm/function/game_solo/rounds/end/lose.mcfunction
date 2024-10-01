tag @s remove personal_timer_active
tag @s remove in_solo_round
clear @s
title @s times 0 40 15
title @s title {"text":"You lost!","color":"#DD2800"}
tellraw @s [{"text":"[ ","color":"gray","bold":false},{"text":"You failed to complete the pattern.","color":"#DD2800","bold":true},{"text":" ]","color":"gray","bold":false}]
scoreboard players operation @s solo_round -= $one data
tellraw @s [{"text":"[ ","color":"gray","bold":false},{"text":"Final Score: ","color":"white","bold":false},{"score":{"name":"@s","objective":"solo_round"},"color":"dark_green"},{"text":" ]","color":"gray","bold":false}]
function mm:game_solo/scoreboard/scoreboard/compare
execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
tag @s add back_to_lobby_delay
function mm:game_solo/start_delay
execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run fill ~ ~ ~ ~ ~4 ~4 red_stained_glass
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run fill ~ ~ ~ ~ ~4 ~4 red_stained_glass
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run fill ~ ~ ~ ~ ~4 ~4 red_stained_glass
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run fill ~ ~ ~ ~ ~4 ~4 red_stained_glass
execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run particle minecraft:smoke ~-0.51 ~2.5 ~2 0 1.5 1.5 0.25 350 force
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run particle minecraft:smoke ~-0.51 ~2.5 ~2 0 1.5 1.5 0.25 350 force
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run particle minecraft:smoke ~-0.51 ~2.5 ~2 0 1.5 1.5 0.25 350 force
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run particle minecraft:smoke ~-0.51 ~2.5 ~2 0 1.5 1.5 0.25 350 force
execute at @s run playsound entity.lightning_bolt.thunder master @s
tag @s add lost_solo_game