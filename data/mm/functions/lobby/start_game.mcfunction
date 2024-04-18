scoreboard players set $game_live data 1

scoreboard players set @a just_left 0

clear @a

scoreboard players set $living_players data 0
scoreboard players set $finished_players data 0
scoreboard players set $one data 1
scoreboard players set $round data 0
scoreboard players operation $timer data = $timer_master data

scoreboard players set $game_starting data 0

scoreboard players reset @a cancel_start

#kill and resummon randomizer markers
kill @e[tag=rand]
summon marker 0 1 0 {Tags:["rand"],CustomName:'{"text":"r1"}'}
summon marker 0 2 0 {Tags:["rand"],CustomName:'{"text":"r2"}'}
summon marker 0 3 0 {Tags:["rand"],CustomName:'{"text":"r3"}'}
summon marker 0 4 0 {Tags:["rand"],CustomName:'{"text":"r4"}'}
summon marker 0 5 0 {Tags:["rand"],CustomName:'{"text":"r5"}'}
summon marker 0 6 0 {Tags:["rand"],CustomName:'{"text":"r6"}'}
summon marker 0 7 0 {Tags:["rand"],CustomName:'{"text":"r7"}'}
summon marker 0 8 0 {Tags:["rand"],CustomName:'{"text":"r8"}'}
summon marker 0 9 0 {Tags:["rand"],CustomName:'{"text":"r9"}'}
summon marker 0 10 0 {Tags:["rand"],CustomName:'{"text":"r10"}'}
summon marker 0 11 0 {Tags:["rand"],CustomName:'{"text":"r11"}'}
summon marker 0 12 0 {Tags:["rand"],CustomName:'{"text":"r12"}'}
summon marker 0 13 0 {Tags:["rand"],CustomName:'{"text":"r13"}'}
summon marker 0 14 0 {Tags:["rand"],CustomName:'{"text":"r14"}'}
summon marker 0 15 0 {Tags:["rand"],CustomName:'{"text":"r15"}'}
summon marker 0 16 0 {Tags:["rand"],CustomName:'{"text":"r16"}'}
summon marker 0 17 0 {Tags:["rand"],CustomName:'{"text":"r17"}'}
summon marker 0 18 0 {Tags:["rand"],CustomName:'{"text":"r18"}'}
summon marker 0 19 0 {Tags:["rand"],CustomName:'{"text":"r19"}'}
summon marker 0 20 0 {Tags:["rand"],CustomName:'{"text":"r20"}'}
summon marker 0 21 0 {Tags:["rand"],CustomName:'{"text":"r21"}'}
summon marker 0 22 0 {Tags:["rand"],CustomName:'{"text":"r22"}'}
summon marker 0 23 0 {Tags:["rand"],CustomName:'{"text":"r23"}'}
summon marker 0 24 0 {Tags:["rand"],CustomName:'{"text":"r24"}'}
summon marker 0 25 0 {Tags:["rand"],CustomName:'{"text":"r25"}'}
summon marker 0 26 0 {Tags:["rand"],CustomName:'{"text":"r26"}'}
summon marker 0 27 0 {Tags:["rand"],CustomName:'{"text":"r27"}'}
summon marker 0 28 0 {Tags:["rand"],CustomName:'{"text":"r28"}'}
summon marker 0 29 0 {Tags:["rand"],CustomName:'{"text":"r29"}'}
summon marker 0 30 0 {Tags:["rand"],CustomName:'{"text":"r30"}'}
summon marker 0 31 0 {Tags:["rand"],CustomName:'{"text":"r31"}'}
summon marker 0 32 0 {Tags:["rand"],CustomName:'{"text":"r32"}'}
summon marker 0 33 0 {Tags:["rand"],CustomName:'{"text":"r33"}'}
summon marker 0 34 0 {Tags:["rand"],CustomName:'{"text":"r34"}'}
summon marker 0 35 0 {Tags:["rand"],CustomName:'{"text":"r35"}'}
summon marker 0 36 0 {Tags:["rand"],CustomName:'{"text":"r36"}'}
summon marker 0 37 0 {Tags:["rand"],CustomName:'{"text":"r37"}'}
summon marker 0 38 0 {Tags:["rand"],CustomName:'{"text":"r38"}'}
summon marker 0 39 0 {Tags:["rand"],CustomName:'{"text":"r39"}'}
summon marker 0 40 0 {Tags:["rand"],CustomName:'{"text":"r40"}'}
summon marker 0 41 0 {Tags:["rand"],CustomName:'{"text":"r41"}'}
summon marker 0 42 0 {Tags:["rand"],CustomName:'{"text":"r42"}'}
summon marker 0 43 0 {Tags:["rand"],CustomName:'{"text":"r43"}'}
summon marker 0 44 0 {Tags:["rand"],CustomName:'{"text":"r44"}'}
summon marker 0 45 0 {Tags:["rand"],CustomName:'{"text":"r45"}'}
summon marker 0 46 0 {Tags:["rand"],CustomName:'{"text":"r46"}'}
summon marker 0 47 0 {Tags:["rand"],CustomName:'{"text":"r47"}'}
summon marker 0 48 0 {Tags:["rand"],CustomName:'{"text":"r48"}'}
summon marker 0 49 0 {Tags:["rand"],CustomName:'{"text":"r49"}'}
summon marker 0 50 0 {Tags:["rand"],CustomName:'{"text":"r50"}'}
summon marker 0 51 0 {Tags:["rand"],CustomName:'{"text":"r51"}'}
summon marker 0 52 0 {Tags:["rand"],CustomName:'{"text":"r52"}'}
summon marker 0 53 0 {Tags:["rand"],CustomName:'{"text":"r53"}'}
summon marker 0 54 0 {Tags:["rand"],CustomName:'{"text":"r54"}'}
summon marker 0 55 0 {Tags:["rand"],CustomName:'{"text":"r55"}'}
summon marker 0 56 0 {Tags:["rand"],CustomName:'{"text":"r56"}'}
summon marker 0 57 0 {Tags:["rand"],CustomName:'{"text":"r57"}'}
summon marker 0 58 0 {Tags:["rand"],CustomName:'{"text":"r58"}'}
summon marker 0 59 0 {Tags:["rand"],CustomName:'{"text":"r59"}'}
summon marker 0 60 0 {Tags:["rand"],CustomName:'{"text":"r60"}'}

function mm:lobby/clear_tags

function mm:game/setup/reset_pattern_markers

tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p1
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p2
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p3
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p4
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p5
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p6
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p7
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8,tag=!spectator,team=ready] add p8

#tp all players
tp @a[tag=p1] 88.50 66.00 71.50 -90 0
tp @a[tag=p2] 88.50 66.00 81.50 -90 0
tp @a[tag=p3] 88.50 66.00 91.50 -90 0
tp @a[tag=p4] 88.50 66.00 101.50 -90 0
tp @a[tag=p5] 84.50 66.00 71.50 90 0
tp @a[tag=p6] 84.50 66.00 81.50 90 0
tp @a[tag=p7] 84.50 66.00 91.50 90 0
tp @a[tag=p8] 84.50 66.00 101.50 90 0

tag @a[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6,tag=!p7,tag=!p8] add spectator
gamemode spectator @a[tag=spectator] 
tp @a[tag=spectator] 74.50 84.00 86.50 -90.00 50.00

execute as @a[tag=!spectator] run function mm:lobby/reset_gm

execute store result score $living_players data if entity @a[tag=!spectator]
scoreboard players operation $living_players_minus_one data = $living_players data
scoreboard players operation $living_players_minus_one data -= $one data

team leave @a

schedule function mm:game/pre_start_round 1s

scoreboard players set $votes data 0
scoreboard players set $eligible_voters data 0

scoreboard players enable @a[tag=p1] end_game
scoreboard players enable @a[tag=p2] end_game
scoreboard players enable @a[tag=p3] end_game
scoreboard players enable @a[tag=p4] end_game
scoreboard players enable @a[tag=p5] end_game
scoreboard players enable @a[tag=p6] end_game
scoreboard players enable @a[tag=p7] end_game
scoreboard players enable @a[tag=p8] end_game