$execute if block ~ ~ ~ $(color)_glazed_terracotta[facing=south] run scoreboard players set $current_block_has_rotated data 1
$execute if block ~ ~ ~ $(color)_glazed_terracotta[facing=south] run setblock ~ ~ ~ $(color)_concrete
$execute if block ~ ~ ~ $(color)_concrete run setblock ~ ~ ~ $(color)_glazed_terracotta[facing=north]