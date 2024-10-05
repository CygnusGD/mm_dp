function mm:general/reset_game_inv
tag @s add editing
$ride @s mount @n[type=text_display,tag=custom_seat_$(cp_id)]
$execute at @e[type=marker,tag=custom_$(cp_id)] run function mm:pattern_editor/menu/signs/save {cp_id:$(cp_id)}
playsound ui.button.click master @s
$scoreboard players set @s editing_pattern $(cp_id)