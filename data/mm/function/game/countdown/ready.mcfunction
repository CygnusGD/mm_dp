title @a[tag=!in_solo_game] times 10 20 10
execute if score $sprint_mode data matches 0 run title @a[tag=!in_solo_game] subtitle {"text":"Memorize the pattern!","color":"#FFFFFF"}
execute if score $sprint_mode data matches 1 run title @a[tag=!in_solo_game] subtitle {"text":"Get ready!","color":"#FFFFFF"}
title @a[tag=!in_solo_game] title [{"text":"Round ","color":"#FFFFFF"},{"score":{"name":"$round","objective":"data"}},{"text":"!"}]
clear @a[tag=!in_solo_game]
execute if score $sprint_mode data matches 0 run schedule function mm:game/countdown/3 10s
execute if score $sprint_mode data matches 1 run schedule function mm:game/countdown/3 45t

execute as @a[tag=!in_solo_game,tag=!spectator] run function mm:general/give_blocks