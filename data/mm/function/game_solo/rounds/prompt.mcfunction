$execute if entity @s[tag=sp1] at @e[tag=solo_1] run place template mm:pattern_$(pattern_id)_east
$execute if entity @s[tag=sp2] at @e[tag=solo_2] run place template mm:pattern_$(pattern_id)_east
$execute if entity @s[tag=sp3] at @e[tag=solo_3] run place template mm:pattern_$(pattern_id)_west
$execute if entity @s[tag=sp4] at @e[tag=solo_4] run place template mm:pattern_$(pattern_id)_west

title @s times 10 20 10
title @s subtitle {"text":"Memorize the pattern!","color":"#FFFFFF"}
title @s title [{"text":"Round ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"solo_round"}},{"text":"!"}]
clear @s
tellraw @s [{"text":"[ ","color":"gray","bold":false},{"text":"Round ","color":"white"},{"score":{"name":"@s","objective":"solo_round"},"color":"white"},{"text":" ]","color":"gray","bold":false}]


execute as @s run function mm:general/give_blocks

tag @s add solo_countdown_3
tag @s add solo_countdown_2
tag @s add solo_countdown_1
tag @s add solo_countdown_go
function mm:game_solo/start_delay