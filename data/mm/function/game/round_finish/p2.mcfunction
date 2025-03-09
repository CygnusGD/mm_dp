tag @s add round_finish
execute as @e[type=marker,tag=2] at @s run fill ~ ~ ~ ~ ~4 ~4 lime_stained_glass
playsound minecraft:entity.player.levelup master @s
tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p2]","color":"dark_green","bold":true},{"text":" completed the pattern!","color":"white","bold":false},{"color":"dark_green","text":" ("},{"color":"dark_green","score":{"name":"@a[tag=p2,limit=1]","objective":"personal_timer_seconds"}},".",{"color":"dark_green","score":{"name":"@a[tag=p2,limit=1]","objective":"personal_timer_tenths"}},{"color":"dark_green","score":{"name":"@a[tag=p2,limit=1]","objective":"personal_timer_hundredths"}},{"color":"dark_green","text":"s"},{"color":"dark_green","text":")"},{"text":" ]","color":"gray","bold":false}]
execute as @e[type=marker,tag=2] at @s run particle minecraft:totem_of_undying ~-0.51 ~2.5 ~2 0 1.5 1.5 1 350 force
scoreboard players add $finished_players data 1
execute if score $finished_players data = $living_players_minus_one data run schedule clear mm:game/timer
execute if score $finished_players data = $living_players_minus_one data run function mm:game/finish_round