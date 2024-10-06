execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~
scoreboard players set $sprint_mode data 1
setblock -1 63 12 air
setblock -1 63 12 oak_wall_sign[facing=north]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Sprint Mode:","clickEvent":{"action":"run_command","value":"/function mm:lobby/sprint_mode/disable"}}','{"text":"On"}','{"text":""}']}} replace
setblock 0 63 12 minecraft:spruce_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"white",has_glowing_text:1b,messages:['""','"Custom Patterns:"','"Disabled"','""']},is_waxed:1b}
setblock 1 64 12 minecraft:spruce_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"white",has_glowing_text:1b,messages:['""','"Timer:"','"Disabled"','""']},is_waxed:1b}