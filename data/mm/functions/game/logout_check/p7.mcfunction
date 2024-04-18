tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@s","color":"#C41616","bold":true},{"text":" disconnected and was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
title @s times 0 40 15
scoreboard players remove $living_players data 1
title @s title {"text":"You were eliminated!","color":"#DD2800"}
execute if score $living_players data matches 1 run function mm:game/finish_game
tag @s add spectator
gamemode spectator