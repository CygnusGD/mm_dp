title @a[tag=!in_solo_game] times 10 20 10
title @a[tag=!in_solo_game] subtitle {"text":"Memorize the pattern!","color":"#FFFFFF"}
title @a[tag=!in_solo_game] title [{"text":"Round ","color":"#FFFFFF"},{"score":{"name":"$round","objective":"data"}},{"text":"!"}]
clear @a[tag=!in_solo_game]
schedule function mm:game/countdown/3 10s

execute as @a[tag=!in_solo_game,tag=!spectator] run function mm:general/give_blocks