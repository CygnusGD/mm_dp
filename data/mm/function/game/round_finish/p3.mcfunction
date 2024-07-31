tag @s add round_finish
execute as @e[type=marker,tag=3] at @s run fill ~ ~ ~ ~ ~4 ~4 lime_stained_glass
playsound minecraft:entity.player.levelup master @s
tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p3]","color":"dark_green","bold":true},{"text":" completed the pattern!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute as @e[type=marker,tag=3] at @s run particle minecraft:totem_of_undying ~-0.51 ~2.5 ~2 0 1.5 1.5 1 350 force
scoreboard players add $finished_players data 1
execute if score $finished_players data = $living_players_minus_one data run schedule clear mm:game/timer
execute if score $finished_players data = $living_players_minus_one data run function mm:game/finish_round