title @a[tag=!in_solo_game] actionbar ""
function mm:lobby/start_game
execute as @a[tag=!in_solo_game] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.5 1.5