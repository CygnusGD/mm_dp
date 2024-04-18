clear @a
schedule clear mm:game/timer
scoreboard players operation $timer data = $timer_master data
title @a times 0 40 15
title @a subtitle {"text":"Starting Next Round","color":"#007D28"}
title @a title {"text":"No players finished!","color":"#007D28"}
tag @a remove round_finish
schedule function mm:game/pre_start_round 3s