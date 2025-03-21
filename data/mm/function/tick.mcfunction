#personal timer
execute as @a[tag=personal_timer_active] run function mm:general/personal_timer/tick

#tick offshoots
execute if score $game_live data matches 1 run function mm:game/tick
function mm:game_solo/tick
function mm:pattern_editor/tick

#rotate tool
execute as @a[scores={rotate_coas=1..},nbt={SelectedItem:{components:{"minecraft:custom_data": {rotate_tool: 1}}}}] at @s positioned ~ ~1.67 ~ run function mm:rotate_tool/use
scoreboard players set @a rotate_coas 0

#first login setup
execute as @a[tag=!i_have_logged_in_at_least_once] run function mm:general/first_login_setup

#fast lobby items (this was bad)
#execute as @e[type=item,x=-15,y=60,z=-15,dx=30,dy=30,dz=30] run data modify entity @s PickupDelay set value 0

execute as @a[x=-15,y=60,z=-15,dx=30,dy=30,dz=30] run scoreboard players enable @s cancel_start
execute as @a if score @s cancel_start matches 1.. run function mm:lobby/cancel_start

#block blocks
execute unless blocks 92 65 68 92 69 74 0 0 0 all run fill 92 65 68 92 69 74 light destroy
execute unless blocks 92 65 78 92 69 84 0 0 0 all run fill 92 65 78 92 69 84 light destroy
execute unless blocks 92 65 88 92 69 94 0 0 0 all run fill 92 65 88 92 69 94 light destroy
execute unless blocks 92 65 98 92 69 104 0 0 0 all run fill 92 65 98 92 69 104 light destroy
execute unless blocks 80 65 68 80 69 74 0 0 0 all run fill 80 65 68 80 69 74 light destroy
execute unless blocks 80 65 78 80 69 84 0 0 0 all run fill 80 65 78 80 69 84 light destroy
execute unless blocks 80 65 88 80 69 94 0 0 0 all run fill 80 65 88 80 69 94 light destroy
execute unless blocks 80 65 98 80 69 104 0 0 0 all run fill 80 65 98 80 69 104 light destroy

#block solo blocks
execute positioned 198 62 42 unless blocks ~ ~ ~ ~ ~5 ~6 0 200 0 all run fill ~ ~ ~ ~ ~5 ~6 light[level=11] destroy
execute positioned 198 62 52 unless blocks ~ ~ ~ ~ ~5 ~6 0 200 0 all run fill ~ ~ ~ ~ ~5 ~6 light[level=11] destroy
execute positioned 186 62 42 unless blocks ~ ~ ~ ~ ~5 ~6 0 200 0 all run fill ~ ~ ~ ~ ~5 ~6 light[level=11] destroy
execute positioned 186 62 52 unless blocks ~ ~ ~ ~ ~5 ~6 0 200 0 all run fill ~ ~ ~ ~ ~5 ~6 light[level=11] destroy

#block editor blocks
execute unless blocks 119 27 69 119 31 75 0 0 0 all run fill 119 27 69 119 31 75 light destroy
execute unless blocks 119 27 81 119 31 87 0 0 0 all run fill 119 27 81 119 31 87 light destroy
execute unless blocks 119 27 93 119 31 99 0 0 0 all run fill 119 27 93 119 31 99 light destroy
execute unless blocks 119 27 105 119 31 111 0 0 0 all run fill 119 27 105 119 31 111 light destroy
execute unless blocks 119 27 117 119 31 123 0 0 0 all run fill 119 27 117 119 31 123 light destroy
execute unless blocks 119 27 129 119 31 135 0 0 0 all run fill 119 27 129 119 31 135 light destroy
execute unless blocks 119 27 141 119 31 147 0 0 0 all run fill 119 27 141 119 31 147 light destroy
execute unless blocks 119 27 153 119 31 159 0 0 0 all run fill 119 27 153 119 31 159 light destroy
execute unless blocks 119 27 165 119 31 171 0 0 0 all run fill 119 27 165 119 31 171 light destroy
execute unless blocks 119 27 177 119 31 183 0 0 0 all run fill 119 27 177 119 31 183 light destroy

execute as @a if score @s just_left matches 1.. run function mm:general/relog