execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~
scoreboard players set $diff_scaling data 1
setblock -1 64 12 air
setblock -1 64 12 oak_wall_sign[facing=north]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Difficulty Scaling:","clickEvent":{"action":"run_command","value":"/function mm:lobby/diff_scale_off"}}','{"text":"Enabled"}','{"text":""}']}} replace