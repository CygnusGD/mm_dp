execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~
scoreboard players set $sprint_mode data 0
setblock -1 63 12 air
setblock -1 63 12 oak_wall_sign[facing=north]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Sprint Mode:","clickEvent":{"action":"run_command","value":"/function mm:lobby/sprint_mode/enable"}}','{"text":"Off"}','{"text":""}']}} replace

scoreboard players set $timer_master data 45
setblock 1 64 12 oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}', '{"text":"Timer:","clickEvent":{"action":"run_command","value":"/function mm:lobby/change_timer"}}', '[{"score":{"name":"$timer_master","objective":"data"}},{"text":" seconds"}]', '{"text":""}'], has_glowing_text: true, color: "white"}} replace

scoreboard players set $custom_patterns data 1
setblock 0 63 12 minecraft:oak_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"white",has_glowing_text:1b,messages:['""','{"clickEvent":{"action":"run_command","value":"/function mm:lobby/custom_patterns/enabled_to_all"},"text":"Custom Patterns:"}','{"text":"Enabled"}','""']},is_waxed:0b}
