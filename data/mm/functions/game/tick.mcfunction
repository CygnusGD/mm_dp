#check for completion
execute as @e[type=marker,tag=1,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p1] at @s run function mm:game/round_finish/p1
execute as @e[type=marker,tag=2,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p2] at @s run function mm:game/round_finish/p2
execute as @e[type=marker,tag=3,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p3] at @s run function mm:game/round_finish/p3
execute as @e[type=marker,tag=4,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p4] at @s run function mm:game/round_finish/p4
execute as @e[type=marker,tag=5,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p5] at @s run function mm:game/round_finish/p5
execute as @e[type=marker,tag=6,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p6] at @s run function mm:game/round_finish/p6
execute as @e[type=marker,tag=7,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p7] at @s run function mm:game/round_finish/p7
execute as @e[type=marker,tag=8,tag=!round_finish] at @s if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p8] at @s run function mm:game/round_finish/p8

#check for logout
execute as @a if score @s just_left matches 1.. run function mm:game/logout_check/logout_check

function mm:game/quick_items/quick_items

execute if score $round_live data matches 1 run title @a actionbar [{"score":{"name":"$timer","objective":"data"}},{"text":" seconds remaining..."}]

execute if score $timer data matches ..0 run function mm:game/time_out/time_out

execute as @a[scores={end_game=1..}] run function mm:game/vote