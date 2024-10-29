function mm:lobby/reset_gm
tag @s add in_solo_game
team join in_solo_game
$tag @s add sp$(player_number)
tp @s[tag=sp1] 194.5 63.0 45.5 -90 0
tp @s[tag=sp2] 194.5 63.0 55.5 -90 0
tp @s[tag=sp3] 190.5 63.0 45.5 90 0
tp @s[tag=sp4] 190.5 63.0 55.5 90 0
attribute @s minecraft:max_health base set 2
scoreboard players set @s solo_round 0
function mm:game_solo/rounds/pre_start