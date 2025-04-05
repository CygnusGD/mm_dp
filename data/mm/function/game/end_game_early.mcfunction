schedule clear mm:game/countdown/1
schedule clear mm:game/countdown/2
schedule clear mm:game/countdown/3
schedule clear mm:game/countdown/go
schedule clear mm:game/countdown/ready
schedule clear mm:game/timer
schedule clear mm:game/place_patterns
schedule clear mm:game/lobby_return/10s
schedule clear mm:game/lobby_return/9s
schedule clear mm:game/lobby_return/8s
schedule clear mm:game/lobby_return/7s
schedule clear mm:game/lobby_return/6s
schedule clear mm:game/lobby_return/5s
schedule clear mm:game/lobby_return/4s
schedule clear mm:game/lobby_return/3s
schedule clear mm:game/lobby_return/2s
schedule clear mm:game/lobby_return/1s
schedule clear mm:game/lobby_return/0s

function mm:game/lobby_return/0s

scoreboard players set $game_live data 0
scoreboard players reset @a[tag=!in_solo_game] end_game
scoreboard players set $votes data 0
scoreboard players set $eligible_voters data 0

tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{text:"You voted to end the game.",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
