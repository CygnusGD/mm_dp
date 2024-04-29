title @a times 10 20 10
title @a subtitle {"text":"Memorize the pattern!","color":"#FFFFFF"}
title @a title [{"text":"Round ","color":"#FFFFFF"},{"score":{"name":"$round","objective":"data"}},{"text":"!"}]
clear @a
schedule function mm:game/countdown/3 10s

execute as @a[tag=!spectator] run function mm:general/give_blocks