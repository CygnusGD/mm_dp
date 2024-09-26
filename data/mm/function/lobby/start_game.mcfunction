scoreboard players set $game_live data 1
scoreboard players reset $time_out_has_happened

scoreboard players set @a just_left 0

clear @a[tag=!in_solo_game]

scoreboard players set $living_players data 0
scoreboard players set $finished_players data 0
scoreboard players set $one data 1
scoreboard players set $round data 0
scoreboard players operation $timer data = $timer_master data

scoreboard players set $game_starting data 0

scoreboard players reset @a[tag=!in_solo_game] cancel_start

function mm:lobby/clear_tags

function mm:game/setup/reset_pattern_markers

tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p1
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p2
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p3
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p4
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p5
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p6
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p7
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,tag=!in_solo_game,team=ready] add p8

tag @a[team=ready] add alive

#tp all players
tp @a[tag=p1] 88.50 66.00 71.50 -90 0
tp @a[tag=p2] 88.50 66.00 81.50 -90 0
tp @a[tag=p3] 88.50 66.00 91.50 -90 0
tp @a[tag=p4] 88.50 66.00 101.50 -90 0
tp @a[tag=p5] 84.50 66.00 71.50 90 0
tp @a[tag=p6] 84.50 66.00 81.50 90 0
tp @a[tag=p7] 84.50 66.00 91.50 90 0
tp @a[tag=p8] 84.50 66.00 101.50 90 0

tag @a[tag=!in_solo_game,tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8] add spectator
gamemode spectator @a[tag=spectator] 
tp @a[tag=spectator] 74.50 84.00 86.50 -90.00 50.00

execute as @a[tag=!spectator] run function mm:lobby/reset_gm

execute store result score $living_players data if entity @a[tag=!spectator,tag=!in_solo_game]
scoreboard players operation $living_players_minus_one data = $living_players data
scoreboard players operation $living_players_minus_one data -= $one data

team leave @a[tag=!in_solo_game]

schedule function mm:game/pre_start_round 1s

scoreboard players set $votes data 0
scoreboard players set $eligible_voters data 0

#past me is an idiot why didn't i have one tag for all living players
scoreboard players enable @a[tag=p1] end_game
scoreboard players enable @a[tag=p2] end_game
scoreboard players enable @a[tag=p3] end_game
scoreboard players enable @a[tag=p4] end_game
scoreboard players enable @a[tag=p5] end_game
scoreboard players enable @a[tag=p6] end_game
scoreboard players enable @a[tag=p7] end_game
scoreboard players enable @a[tag=p8] end_game

scoreboard players operation @a[tag=alive,tag=!in_solo_game] lives = $life_count data

effect clear @a[tag=!in_solo_game] resistance

#past me is an idiot again but the more recent past me
execute if score $life_count data matches 10 as @a run attribute @s minecraft:generic.max_health base set 20
execute if score $life_count data matches 7 as @a run attribute @s minecraft:generic.max_health base set 14
execute if score $life_count data matches 5 as @a run attribute @s minecraft:generic.max_health base set 10
execute if score $life_count data matches 4 as @a run attribute @s minecraft:generic.max_health base set 8
execute if score $life_count data matches 3 as @a run attribute @s minecraft:generic.max_health base set 6
execute if score $life_count data matches 2 as @a run attribute @s minecraft:generic.max_health base set 4
execute if score $life_count data matches 1 as @a run attribute @s minecraft:generic.max_health base set 2

effect give @a[tag=!in_solo_game] minecraft:regeneration 1 255 true

scoreboard players set $difficulty data 0