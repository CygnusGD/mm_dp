title @a[tag=!in_solo_game] times 0 20 10
title @a[tag=!in_solo_game] subtitle ""
title @a[tag=!in_solo_game] title {text:"〉〉〉 3 〈〈〈",color:"#E2AA0D"}
execute as @a[tag=!in_solo_game] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
schedule function mm:game/countdown/2 1s