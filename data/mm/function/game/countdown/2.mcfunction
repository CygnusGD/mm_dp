title @a[tag=!in_solo_game] title {"text":"〉〉 2 〈〈","color":"#DCE21B"}
execute as @a[tag=!in_solo_game] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
schedule function mm:game/countdown/1 1s