#run as and at winning player
scoreboard players set $game_live data 0
scoreboard players reset @a end_game
title @a times 0 100 20
gamemode spectator @a
title @a title [{"selector":"@s","color":"gold","bold":true},{"text":" wins!","color":"white","bold":false}]
tellraw @a [{"text":"[ ","color":"gray","bold":false},{"selector":"@s","color":"gold","bold":true},{"text":" won the game!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
schedule function mm:game/lobby_return/10s 125t