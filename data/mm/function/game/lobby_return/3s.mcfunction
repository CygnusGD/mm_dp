title @a[tag=!in_solo_game] actionbar "Returning to lobby in 3"
schedule function mm:game/lobby_return/2s 1s
execute as @a[tag=!in_solo_game] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.5 1