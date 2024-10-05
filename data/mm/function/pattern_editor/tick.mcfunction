execute as @e[type=item,x=111,y=26,z=61,dx=20,dy=10,dz=200] run tp @s @a[tag=in_editor,limit=1]
execute as @e[type=item,x=111,y=26,z=61,dx=20,dy=10,dz=200] run data modify entity @s PickupDelay set value 0

execute as @a[tag=in_editor,tag=editing] unless data entity @s RootVehicle run function mm:pattern_editor/menu/pre_save
execute as @a[tag=in_editor,tag=editing] unless data entity @s RootVehicle run tag @s remove editing