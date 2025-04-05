execute if score $life_count data matches 10 run scoreboard players set $life_count data 69420
execute if score $life_count data matches 7 run scoreboard players set $life_count data 10
execute if score $life_count data matches 5 run scoreboard players set $life_count data 7
execute if score $life_count data matches 4 run scoreboard players set $life_count data 5
execute if score $life_count data matches 3 run scoreboard players set $life_count data 4
execute if score $life_count data matches 2 run scoreboard players set $life_count data 3
execute if score $life_count data matches 1 run scoreboard players set $life_count data 2
execute if score $life_count data matches 69420 run scoreboard players set $life_count data 1

execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

setblock 0 64 12 spruce_wall_sign[facing=north] replace
setblock 0 64 12 oak_wall_sign[facing=north]{front_text:{color:"white",has_glowing_text:1b,messages:[{text:""},{text:"Lives:",click_event:{action:"run_command",command:"/function mm:lobby/change_lives"}},[{score:{name:"$life_count",objective:"data"}}],{text:""}]}} replace

#yeah this is to avoid doing math
execute if score $life_count data matches 10 as @a run attribute @s minecraft:max_health base set 20
execute if score $life_count data matches 7 as @a run attribute @s minecraft:max_health base set 14
execute if score $life_count data matches 5 as @a run attribute @s minecraft:max_health base set 10
execute if score $life_count data matches 4 as @a run attribute @s minecraft:max_health base set 8
execute if score $life_count data matches 3 as @a run attribute @s minecraft:max_health base set 6
execute if score $life_count data matches 2 as @a run attribute @s minecraft:max_health base set 4
execute if score $life_count data matches 1 as @a run attribute @s minecraft:max_health base set 2

effect give @a minecraft:regeneration 1 255 true