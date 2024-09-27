execute if score $timer_master data matches 100 run scoreboard players set $timer_master data 69420
execute if score $timer_master data matches 90 run scoreboard players set $timer_master data 100
execute if score $timer_master data matches 80 run scoreboard players set $timer_master data 90
execute if score $timer_master data matches 70 run scoreboard players set $timer_master data 80
execute if score $timer_master data matches 60 run scoreboard players set $timer_master data 70
execute if score $timer_master data matches 55 run scoreboard players set $timer_master data 60
execute if score $timer_master data matches 50 run scoreboard players set $timer_master data 55
execute if score $timer_master data matches 45 run scoreboard players set $timer_master data 50
execute if score $timer_master data matches 40 run scoreboard players set $timer_master data 45
execute if score $timer_master data matches 35 run scoreboard players set $timer_master data 40
execute if score $timer_master data matches 30 run scoreboard players set $timer_master data 35
execute if score $timer_master data matches 25 run scoreboard players set $timer_master data 30
execute if score $timer_master data matches 20 run scoreboard players set $timer_master data 25
execute if score $timer_master data matches 15 run scoreboard players set $timer_master data 20
execute if score $timer_master data matches 10 run scoreboard players set $timer_master data 15
execute if score $timer_master data matches 69420 run scoreboard players set $timer_master data 10

execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

setblock 1 64 12 spruce_wall_sign[facing=north] replace
setblock 1 64 12 oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}', '{"text":"Timer:","clickEvent":{"action":"run_command","value":"/function mm:lobby/change_timer"}}', '[{"score":{"name":"$timer_master","objective":"data"}},{"text":" seconds"}]', '{"text":""}'], has_glowing_text: true, color: "white"}} replace