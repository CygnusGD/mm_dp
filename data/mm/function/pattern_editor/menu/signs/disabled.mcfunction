execute positioned ~-1 ~5 ~3 run setblock ~ ~ ~ air
$execute at @e[type=marker,tag=custom_$(cp_id)] run execute positioned ~-1 ~5 ~3 run setblock ~ ~ ~ oak_wall_sign[facing=west,waterlogged=false]{front_text:{color:"red",has_glowing_text:1b,messages:[{text:""},{text:"Disabled",click_event:{action:"run_command",command:"/function mm:pattern_editor/menu/enable {cp_id:$(cp_id)}"}},{text:""},{text:""}]},is_waxed:0b} replace