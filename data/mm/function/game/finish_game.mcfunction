#run as and at winning player
scoreboard players set $game_live data 0
scoreboard players reset @a[tag=!in_solo_game] end_game
title @a[tag=!in_solo_game] times 0 100 20
gamemode spectator @a[tag=!in_solo_game]
title @a[tag=!in_solo_game] title [{"selector":"@s","color":"gold","bold":true},{"text":" wins!","color":"white","bold":false}]
tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@s","color":"gold","bold":true},{"text":" won the game!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
schedule function mm:game/lobby_return/10s 125t
tag @s add winner
function mm:general/give_crown