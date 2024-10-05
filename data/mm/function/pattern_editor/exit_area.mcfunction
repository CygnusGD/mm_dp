tag @s remove in_editor

tp @s 0.5 64 0.5 0 0
function mm:lobby/reset_gm
clear @s
function mm:general/give_book

execute if score $life_count data matches 10 run attribute @s minecraft:generic.max_health base set 20
execute if score $life_count data matches 7 run attribute @s minecraft:generic.max_health base set 14
execute if score $life_count data matches 5 run attribute @s minecraft:generic.max_health base set 10
execute if score $life_count data matches 4 run attribute @s minecraft:generic.max_health base set 8
execute if score $life_count data matches 3 run attribute @s minecraft:generic.max_health base set 6
execute if score $life_count data matches 2 run attribute @s minecraft:generic.max_health base set 4
execute if score $life_count data matches 1 run attribute @s minecraft:generic.max_health base set 2

effect give @a[tag=!in_solo_game] minecraft:regeneration 1 255 true