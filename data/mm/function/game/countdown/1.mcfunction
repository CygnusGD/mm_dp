title @a[tag=!in_solo_game] title {"text":"〉 1 〈","color":"#00C932"}
execute as @a[tag=!in_solo_game] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
schedule function mm:game/countdown/go 1s