scoreboard players operation $living_players_minus_one data = $living_players data
scoreboard players operation $living_players_minus_one data -= $one data

tag @a remove round_finish
execute as @e[type=marker,tag=frame_east] at @s run fill ~ ~ ~ ~ ~4 ~4 light
execute as @e[type=marker,tag=frame_west] at @s run fill ~ ~ ~ ~ ~4 ~4 light

scoreboard players set $round_live data 1
scoreboard players operation $timer data = $timer_master data
schedule function mm:game/timer 1s

execute as @a[tag=!spectator] run function mm:general/reset_game_inv

execute if score $rand data matches 1 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_1_east
execute if score $rand data matches 1 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_1_west

execute if score $rand data matches 2 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_2_east
execute if score $rand data matches 2 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_2_west

execute if score $rand data matches 3 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_3_east
execute if score $rand data matches 3 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_3_west

execute if score $rand data matches 4 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_4_east
execute if score $rand data matches 4 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_4_west

execute if score $rand data matches 5 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_5_east
execute if score $rand data matches 5 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_5_west

execute if score $rand data matches 6 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_6_east
execute if score $rand data matches 6 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_6_west

execute if score $rand data matches 7 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_7_east
execute if score $rand data matches 7 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_7_west

execute if score $rand data matches 8 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_8_east
execute if score $rand data matches 8 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_8_west

execute if score $rand data matches 9 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_9_east
execute if score $rand data matches 9 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_9_west

execute if score $rand data matches 10 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_10_east
execute if score $rand data matches 10 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_10_west

execute if score $rand data matches 11 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_11_east
execute if score $rand data matches 11 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_11_west

execute if score $rand data matches 12 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_12_east
execute if score $rand data matches 12 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_12_west

execute if score $rand data matches 13 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_13_east
execute if score $rand data matches 13 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_13_west

execute if score $rand data matches 14 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_14_east
execute if score $rand data matches 14 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_14_west

execute if score $rand data matches 15 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_15_east
execute if score $rand data matches 15 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_15_west

execute if score $rand data matches 16 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_16_east
execute if score $rand data matches 16 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_16_west

execute if score $rand data matches 17 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_17_east
execute if score $rand data matches 17 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_17_west

execute if score $rand data matches 18 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_18_east
execute if score $rand data matches 18 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_18_west

execute if score $rand data matches 19 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_19_east
execute if score $rand data matches 19 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_19_west

execute if score $rand data matches 20 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_20_east
execute if score $rand data matches 20 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_20_west

execute if score $rand data matches 21 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_21_east
execute if score $rand data matches 21 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_21_west

execute if score $rand data matches 22 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_22_east
execute if score $rand data matches 22 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_22_west

execute if score $rand data matches 23 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_23_east
execute if score $rand data matches 23 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_23_west

execute if score $rand data matches 24 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_24_east
execute if score $rand data matches 24 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_24_west

execute if score $rand data matches 25 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_25_east
execute if score $rand data matches 25 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_25_west

execute if score $rand data matches 26 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_26_east
execute if score $rand data matches 26 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_26_west

execute if score $rand data matches 27 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_27_east
execute if score $rand data matches 27 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_27_west

execute if score $rand data matches 28 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_28_east
execute if score $rand data matches 28 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_28_west

execute if score $rand data matches 29 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_29_east
execute if score $rand data matches 29 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_29_west

execute if score $rand data matches 30 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_30_east
execute if score $rand data matches 30 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_30_west

execute if score $rand data matches 31 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_31_east
execute if score $rand data matches 31 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_31_west

execute if score $rand data matches 32 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_32_east
execute if score $rand data matches 32 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_32_west

execute if score $rand data matches 33 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_33_east
execute if score $rand data matches 33 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_33_west

execute if score $rand data matches 34 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_34_east
execute if score $rand data matches 34 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_34_west

execute if score $rand data matches 35 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_35_east
execute if score $rand data matches 35 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_35_west

execute if score $rand data matches 36 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_36_east
execute if score $rand data matches 36 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_36_west

execute if score $rand data matches 37 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_37_east
execute if score $rand data matches 37 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_37_west

execute if score $rand data matches 38 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_38_east
execute if score $rand data matches 38 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_38_west

execute if score $rand data matches 39 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_39_east
execute if score $rand data matches 39 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_39_west

execute if score $rand data matches 40 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_40_east
execute if score $rand data matches 40 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_40_west

execute if score $rand data matches 41 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_41_east
execute if score $rand data matches 41 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_41_west

execute if score $rand data matches 42 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_42_east
execute if score $rand data matches 42 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_42_west

execute if score $rand data matches 43 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_43_east
execute if score $rand data matches 43 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_43_west

execute if score $rand data matches 44 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_44_east
execute if score $rand data matches 44 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_44_west

execute if score $rand data matches 45 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_45_east
execute if score $rand data matches 45 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_45_west

execute if score $rand data matches 46 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_46_east
execute if score $rand data matches 46 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_46_west

execute if score $rand data matches 47 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_47_east
execute if score $rand data matches 47 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_47_west

execute if score $rand data matches 48 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_48_east
execute if score $rand data matches 48 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_48_west

execute if score $rand data matches 49 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_49_east
execute if score $rand data matches 49 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_49_west

execute if score $rand data matches 50 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_50_east
execute if score $rand data matches 50 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_50_west

execute if score $rand data matches 51 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_51_east
execute if score $rand data matches 51 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_51_west

execute if score $rand data matches 52 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_52_east
execute if score $rand data matches 52 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_52_west

execute if score $rand data matches 53 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_53_east
execute if score $rand data matches 53 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_53_west

execute if score $rand data matches 54 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_54_east
execute if score $rand data matches 54 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_54_west

execute if score $rand data matches 55 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_55_east
execute if score $rand data matches 55 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_55_west

execute if score $rand data matches 56 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_56_east
execute if score $rand data matches 56 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_56_west

execute if score $rand data matches 57 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_57_east
execute if score $rand data matches 57 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_57_west

execute if score $rand data matches 58 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_58_east
execute if score $rand data matches 58 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_58_west

execute if score $rand data matches 59 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_59_east
execute if score $rand data matches 59 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_59_west

execute if score $rand data matches 60 run execute as @e[type=marker,tag=pattern_check_east] at @s run place template minecraft:pattern_60_east
execute if score $rand data matches 60 run execute as @e[type=marker,tag=pattern_check_west] at @s run place template minecraft:pattern_60_west