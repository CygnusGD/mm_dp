scoreboard players set $current_block_has_rotated data 0
$execute if score $current_block_has_rotated data matches 0 run function mm:pattern_editor/conversion/directions/north_to_south {color:$(color)}
$execute if score $current_block_has_rotated data matches 0 run function mm:pattern_editor/conversion/directions/south_to_north {color:$(color)}
$execute if score $current_block_has_rotated data matches 0 run function mm:pattern_editor/conversion/directions/east_to_west {color:$(color)}
$execute if score $current_block_has_rotated data matches 0 run function mm:pattern_editor/conversion/directions/west_to_east {color:$(color)}