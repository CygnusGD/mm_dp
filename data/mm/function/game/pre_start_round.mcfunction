scoreboard players reset $time_out_has_happened

#set lp-1 to lp
scoreboard players operation $living_players_minus_one data = $living_players data
#remove 1 from lp-1 to make it actually lp-1
scoreboard players operation $living_players_minus_one data -= $one data
#set finished players to 0 because nobody finished yet
scoreboard players set $finished_players data 0

#reset stuff idk
schedule clear mm:game/timer
clear @a[tag=!in_solo_game]

#increase round number
scoreboard players add $round data 1
#reset timer
scoreboard players operation $timer data = $timer_master data

#random stuff be like
execute if score $round data matches ..3 run scoreboard players set $difficulty data 1
execute if score $round data matches 4..8 run scoreboard players set $difficulty data 2
execute if score $round data matches 10.. run scoreboard players set $difficulty data 3
execute if score $sprint_mode data matches 0 run schedule function mm:game/place_patterns 10t
execute if score $sprint_mode data matches 1 run schedule function mm:game/place_patterns_sprint 10t
schedule function mm:game/countdown/ready 10t

#trigger game end stuff
scoreboard players set $eligible_voters data 0
execute as @a[tag=p1,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p2,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p3,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p4,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p5,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p6,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p7,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p8,tag=!spectator,tag=!in_solo_game] run scoreboard players add $eligible_voters data 1
scoreboard players enable @a[tag=p1,tag=!spectator,tag=!in_solo_game] end_game
scoreboard players enable @a[tag=p2,tag=!spectator,tag=!in_solo_game] end_game
scoreboard players enable @a[tag=p3,tag=!spectator,tag=!in_solo_game] end_game
scoreboard players enable @a[tag=p4,tag=!spectator,tag=!in_solo_game] end_game
scoreboard players enable @a[tag=p5,tag=!spectator,tag=!in_solo_game] end_game
scoreboard players enable @a[tag=p6,tag=!spectator,tag=!in_solo_game] end_game
scoreboard players enable @a[tag=p7,tag=!spectator,tag=!in_solo_game] end_game
scoreboard players enable @a[tag=p8,tag=!spectator,tag=!in_solo_game] end_game

#i really don't know what this is for
scoreboard players reset @a[tag=spectator]

scoreboard players set $extra_finishes_bug_fix data 0