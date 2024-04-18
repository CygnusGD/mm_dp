#tick offshoots
execute if score $game_live data matches 1 run function mm:game/tick

#rotate tool
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{rotate_tool:1}}},scores={rotate_coas=1..}] at @s positioned ~ ~1.67 ~ run function mm:rotate_tool/use
scoreboard players set @a rotate_coas 0

#first login setup
execute as @a[tag=!i_have_logged_in_at_least_once] run function mm:general/first_login_setup

#fast lobby items
execute as @e[type=item,x=-15,y=60,z=-15,dx=30,dy=30,dz=30] run data modify entity @s PickupDelay set value 0

execute as @a[x=-15,y=60,z=-15,dx=30,dy=30,dz=30] run scoreboard players enable @s cancel_start
execute as @a if score @s cancel_start matches 1.. run function mm:lobby/cancel_start