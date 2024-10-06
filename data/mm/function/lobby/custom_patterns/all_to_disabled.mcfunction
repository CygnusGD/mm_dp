execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~
scoreboard players set $custom_patterns data 0
setblock 0 63 12 air
setblock 0 63 12 minecraft:oak_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"white",has_glowing_text:1b,messages:['""','{"clickEvent":{"action":"run_command","value":"/function mm:lobby/custom_patterns/disabled_to_enabled"},"text":"Custom Patterns:"}','{"text":"Disabled"}','""']},is_waxed:0b}