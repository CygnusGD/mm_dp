execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~
scoreboard players set $custom_patterns data 2
setblock 0 63 12 air
setblock 0 63 12 minecraft:oak_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},front_text:{color:"white",has_glowing_text:1b,messages:["",{click_event:{action:"run_command",command:"/function mm:lobby/custom_patterns/all_to_disabled"},text:"Custom Patterns:"},{text:"All"},""]},is_waxed:0b}