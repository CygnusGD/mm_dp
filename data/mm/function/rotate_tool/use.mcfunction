scoreboard players add @s rotate_raycast 1
execute positioned ^ ^ ^ if block ^ ^ ^ #mm:rotatable run function mm:rotate_tool/rotate
execute if block ^ ^ ^ air positioned ^ ^ ^0.1 if score @s rotate_raycast matches 1..50 run function mm:rotate_tool/use
execute if block ^ ^ ^ light positioned ^ ^ ^0.1 if score @s rotate_raycast matches 1..50 run function mm:rotate_tool/use
scoreboard players set @s rotate_raycast 0