scoreboard players reset @s cancel_start
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/10
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/9
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/8
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/7
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/6
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/5
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/4
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/3
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/2
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/1
execute if score $game_live data matches 0 run schedule clear mm:lobby/start/0
title @a actionbar ""
execute if score $game_live data matches 0 if block 0 65 12 air run tellraw @a [{text:"[ ",color:"gray",bold:false},{text:"Start canceled!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
function mm:lobby/reset_signs