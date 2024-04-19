#set lp-1 to lp
scoreboard players operation $living_players_minus_one data = $living_players data
#subtract 1 from lp to get lp-1
scoreboard players operation $living_players_minus_one data -= $one data
#if everybody finished but one person, end the round and clear the timer
execute if score $finished_players data = $living_players_minus_one data run scoreboard players set $round_live data 0
execute if score $finished_players data = $living_players_minus_one data run schedule clear mm:game/timer

#tell everybody who got eliminated
execute if entity @a[tag=p1,tag=!round_finish] unless entity @a[tag=p1,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p1,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p2,tag=!round_finish] unless entity @a[tag=p2,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p2,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p3,tag=!round_finish] unless entity @a[tag=p3,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p3,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p4,tag=!round_finish] unless entity @a[tag=p4,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p4,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p5,tag=!round_finish] unless entity @a[tag=p5,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p5,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p6,tag=!round_finish] unless entity @a[tag=p6,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p6,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p7,tag=!round_finish] unless entity @a[tag=p7,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p7,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p8,tag=!round_finish] unless entity @a[tag=p8,tag=spectator] run tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p8,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]

#for some reason this is here
title @a times 0 40 15

#reduce living player count
scoreboard players remove $living_players data 1

#if there are 2 or more living players, start another round
execute if score $living_players data matches 2.. run title @a[tag=round_finish] title {"text":"Starting Next Round","color":"#007D28"}
execute if score $living_players data matches 2.. run title @a[tag=!round_finish] title {"text":"You were eliminated!","color":"#DD2800"}
execute as @a at @s if score $living_players data matches 2.. run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~

#if there is 1 living player, end the game cause somebody won
execute if score $living_players data matches 1 run function mm:game/finish_game

#these have something to do with spectating idk
execute as @a[tag=!round_finish] run tag @s add spectator
execute as @a[tag=!round_finish] run gamemode spectator
tag @a remove round_finish

#if there are 2 or more living players, start another round
execute if score $living_players data matches 2.. run schedule function mm:game/pre_start_round 3s