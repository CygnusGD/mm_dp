schedule clear mm:game/timer
scoreboard players set $timer data 45
title @a[tag=!in_solo_game] actionbar ""
tp @a[tag=!in_solo_game] 0.5 64 0.5 0 0
execute as @a[tag=!in_solo_game] run function mm:lobby/reset_gm
function mm:lobby/reset_signs
clear @a[tag=!in_solo_game]
execute as @a[tag=!in_solo_game] run function mm:general/give_book
tag @a[tag=!in_solo_game] remove in_solo_game

execute if score $life_count data matches 10 as @a[tag=!in_solo_game] run attribute @s minecraft:max_health base set 20
execute if score $life_count data matches 7 as @a[tag=!in_solo_game] run attribute @s minecraft:max_health base set 14
execute if score $life_count data matches 5 as @a[tag=!in_solo_game] run attribute @s minecraft:max_health base set 10
execute if score $life_count data matches 4 as @a[tag=!in_solo_game] run attribute @s minecraft:max_health base set 8
execute if score $life_count data matches 3 as @a[tag=!in_solo_game] run attribute @s minecraft:max_health base set 6
execute if score $life_count data matches 2 as @a[tag=!in_solo_game] run attribute @s minecraft:max_health base set 4
execute if score $life_count data matches 1 as @a[tag=!in_solo_game] run attribute @s minecraft:max_health base set 2

effect give @a[tag=!in_solo_game] minecraft:regeneration 1 255 true

#why did i make it like this ugh

execute as @a[tag=!in_solo_game] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.5 1.5

execute as @a[tag=winner] run function mm:general/give_crown