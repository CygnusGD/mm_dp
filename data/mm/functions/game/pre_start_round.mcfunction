scoreboard players operation $living_players_minus_one data = $living_players data
scoreboard players operation $living_players_minus_one data -= $one data
scoreboard players set $finished_players data 0
schedule clear mm:game/timer
clear @a
scoreboard players add $round data 1
scoreboard players operation $timer data = $timer_master data
function mm:game/pick_random_pattern
schedule function mm:game/place_patterns 10t
schedule function mm:game/countdown/ready 10t

scoreboard players set $eligible_voters data 0
execute as @a[tag=p1,tag=!spectator] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p2,tag=!spectator] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p3,tag=!spectator] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p4,tag=!spectator] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p5,tag=!spectator] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p6,tag=!spectator] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p7,tag=!spectator] run scoreboard players add $eligible_voters data 1
execute as @a[tag=p8,tag=!spectator] run scoreboard players add $eligible_voters data 1
scoreboard players enable @a[tag=p1,tag=!spectator] end_game
scoreboard players enable @a[tag=p2,tag=!spectator] end_game
scoreboard players enable @a[tag=p3,tag=!spectator] end_game
scoreboard players enable @a[tag=p4,tag=!spectator] end_game
scoreboard players enable @a[tag=p5,tag=!spectator] end_game
scoreboard players enable @a[tag=p6,tag=!spectator] end_game
scoreboard players enable @a[tag=p7,tag=!spectator] end_game
scoreboard players enable @a[tag=p8,tag=!spectator] end_game
scoreboard players reset @a[tag=spectator]