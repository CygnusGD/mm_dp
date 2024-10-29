tag @s add i_have_logged_in_at_least_once
tag @s add gotta_tp

tp @s 0.50 64.00 0.50 0.00 0.00
schedule function mm:general/gotta_tp 1t
function mm:lobby/reset_gm
clear @s
function mm:general/give_book

#gamerules (why is this in here?)
gamerule doDaylightCycle false
time set noon
gamerule commandBlockOutput false
gamerule logAdminCommands false
#gamerule sendCommandFeedback false
gamerule doFireTick false
gamerule randomTickSpeed 0
gamerule doMobSpawning false

execute if score $life_count data matches 10 run attribute @s minecraft:max_health base set 20
execute if score $life_count data matches 7 run attribute @s minecraft:max_health base set 14
execute if score $life_count data matches 5 run attribute @s minecraft:max_health base set 10
execute if score $life_count data matches 4 run attribute @s minecraft:max_health base set 8
execute if score $life_count data matches 3 run attribute @s minecraft:max_health base set 6
execute if score $life_count data matches 2 run attribute @s minecraft:max_health base set 4
execute if score $life_count data matches 1 run attribute @s minecraft:max_health base set 2

effect give @s minecraft:regeneration 1 255 true