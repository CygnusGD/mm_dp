tag @s remove personal_timer_active
clear @s
title @s times 0 40 15
title @s subtitle {"text":"Starting Next Round","color":"#007D28"}
title @s title {"text":"Pattern Finished!","color":"#007D28"}
tellraw @s [{"text":"[ ","color":"gray","bold":false},{"text":"You","color":"dark_green","bold":true},{"text":" completed the pattern!","color":"white","bold":false},{"color":"dark_green","text":" ("},{"color":"dark_green","score":{"name":"@s","objective":"personal_timer_seconds"}},".",{"color":"dark_green","score":{"name":"@s","objective":"personal_timer_tenths"}},{"color":"dark_green","score":{"name":"@s","objective":"personal_timer_hundredths"}},{"color":"dark_green","text":"s"},{"color":"dark_green","text":")"},{"text":" ]","color":"gray","bold":false}]
execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
tag @s add between_round_delay
function mm:game_solo/start_delay