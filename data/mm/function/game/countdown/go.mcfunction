title @a[tag=!in_solo_game] times 0 5 10
title @a[tag=!in_solo_game] title {"text":"Round Start!","color":"#007D28"}
execute as @a[tag=!in_solo_game] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
function mm:game/start_round