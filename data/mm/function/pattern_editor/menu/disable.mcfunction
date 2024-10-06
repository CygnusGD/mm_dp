$tag @e[type=marker,tag=custom_$(cp_id)] add cp_disabled
$tag @e[type=marker,tag=custom_$(cp_id)] remove cp_enabled
$execute at @e[type=marker,tag=custom_$(cp_id)] run function mm:pattern_editor/menu/signs/disabled {cp_id:$(cp_id)}
$tellraw @s [{"text":"[ ","color":"gray","bold":false},{"text":"Custom Pattern $(cp_id) Disabled","color":"#C41616","bold":false},{"text":" ]","color":"gray","bold":false}]
playsound ui.button.click master @s
