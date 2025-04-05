$execute at @n[type=marker,tag=custom_$(cp_id)] run fill ~ ~ ~ ~ ~4 ~4 purpur_block replace air
$execute at @n[type=marker,tag=custom_$(cp_id)] run function mm:pattern_editor/conversion/full_pattern_east_to_west
$execute if entity @a[tag=in_editor] run tellraw @s [{text:"[ ",color:"gray",bold:false},{text:"Custom Pattern $(cp_id) Saved",color:"dark_green",bold:false},{text:" ]",color:"gray",bold:false}]
$function mm:pattern_editor/menu/signs/edit/$(cp_id)
execute as @a[tag=editing] run ride @s dismount
execute as @a[tag=editing] run clear @s
execute as @a[tag=editing] run function mm:general/give_book
execute as @a[tag=editing] at @s run playsound ui.button.click master @s
execute as @a[tag=editing] run tag @s remove editing