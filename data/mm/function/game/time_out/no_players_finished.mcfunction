clear @a[tag=!in_solo_game]
schedule clear mm:game/timer
scoreboard players operation $timer data = $timer_master data
title @a[tag=!in_solo_game] times 0 40 15
title @a[tag=!in_solo_game] subtitle {text:"Starting Next Round",color:"#007D28"}
title @a[tag=!in_solo_game] title {text:"No players finished!",color:"#007D28"}
tag @a[tag=!in_solo_game] remove round_finish
schedule function mm:game/pre_start_round 3s