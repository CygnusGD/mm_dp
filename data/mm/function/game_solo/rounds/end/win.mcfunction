tag @s remove personal_timer_active
tag @s remove in_solo_round
clear @s
title @s times 0 40 15
title @s subtitle {text:"Starting Next Round",color:"#007D28"}
title @s title {text:"Pattern Finished!",color:"#007D28"}
tellraw @s [{text:"[ ",color:"gray",bold:false},{text:"You",color:"dark_green",bold:true},{text:" completed the pattern!",color:"white",bold:false},{color:"dark_green",text:" ("},{color:"dark_green",score:{name:"@s",objective:"personal_timer_seconds"}},".",{color:"dark_green",score:{name:"@s",objective:"personal_timer_tenths"}},{color:"dark_green",score:{name:"@s",objective:"personal_timer_hundredths"}},{color:"dark_green",text:"s"},{color:"dark_green",text:")"},{text:" ]",color:"gray",bold:false}]
execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run fill ~ ~-10 ~ ~ ~-6 ~4 stone
tag @s add between_round_delay
function mm:game_solo/start_delay
execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run fill ~ ~ ~ ~ ~4 ~4 lime_stained_glass
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run fill ~ ~ ~ ~ ~4 ~4 lime_stained_glass
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run fill ~ ~ ~ ~ ~4 ~4 lime_stained_glass
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run fill ~ ~ ~ ~ ~4 ~4 lime_stained_glass
execute if entity @s[tag=sp1] at @e[type=marker,tag=solo_1] run particle minecraft:totem_of_undying ~-0.51 ~2.5 ~2 0 1.5 1.5 1 350 force
execute if entity @s[tag=sp2] at @e[type=marker,tag=solo_2] run particle minecraft:totem_of_undying ~-0.51 ~2.5 ~2 0 1.5 1.5 1 350 force
execute if entity @s[tag=sp3] at @e[type=marker,tag=solo_3] run particle minecraft:totem_of_undying ~-0.51 ~2.5 ~2 0 1.5 1.5 1 350 force
execute if entity @s[tag=sp4] at @e[type=marker,tag=solo_4] run particle minecraft:totem_of_undying ~-0.51 ~2.5 ~2 0 1.5 1.5 1 350 force
execute at @s run playsound entity.player.levelup master @s