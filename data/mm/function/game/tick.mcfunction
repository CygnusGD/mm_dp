#check for completion
execute as @e[type=marker,tag=1,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p1] at @s run function mm:game/round_finish/p1
execute as @e[type=marker,tag=2,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p2] at @s run function mm:game/round_finish/p2
execute as @e[type=marker,tag=3,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p3] at @s run function mm:game/round_finish/p3
execute as @e[type=marker,tag=4,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 93 54 99 all run execute as @a[tag=p4] at @s run function mm:game/round_finish/p4
execute as @e[type=marker,tag=5,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p5] at @s run function mm:game/round_finish/p5
execute as @e[type=marker,tag=6,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p6] at @s run function mm:game/round_finish/p6
execute as @e[type=marker,tag=7,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p7] at @s run function mm:game/round_finish/p7
execute as @e[type=marker,tag=8,tag=!round_finish] at @s unless score $rand data matches 0 if blocks ~ ~ ~ ~ ~4 ~4 79 54 99 all run execute as @a[tag=p8] at @s run function mm:game/round_finish/p8

#custom pattern completion check
execute as @e[type=marker,tag=1,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:1}
execute as @e[type=marker,tag=2,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:2}
execute as @e[type=marker,tag=3,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:3}
execute as @e[type=marker,tag=4,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:4}
execute as @e[type=marker,tag=5,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:5}
execute as @e[type=marker,tag=6,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:6}
execute as @e[type=marker,tag=7,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:7}
execute as @e[type=marker,tag=8,tag=!round_finish] at @s if score $round_live data matches 1 run function mm:game/custom_pattern_check {player:8}

function mm:game/quick_items/quick_items

execute if score $sprint_mode data matches 0 if score $round_live data matches 1 run title @a[tag=!in_solo_game] actionbar [{"score":{"name":"$timer","objective":"data"}},{"text":" seconds remaining..."}]
execute if score $sprint_mode data matches 1 if score $round_live data matches 1 run function mm:game/sprint/title with storage mm:data


execute if score $timer data matches ..0 unless score $time_out_has_happened data matches 1.. run function mm:game/time_out/time_out

execute as @a[tag=!in_solo_game,scores={end_game=1..}] run function mm:game/vote

execute store result score $alive_players_accurate data run execute if entity @a[tag=alive]
execute if score $alive_players_accurate data < $living_players data run function mm:game/logout