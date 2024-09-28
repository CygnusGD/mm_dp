tag @s add in_solo_game
team join in_solo_game
$tag @s add sp$(player_number)
tp @s[tag=sp1] 194.5 63.0 45.5 -90 0
tp @s[tag=sp2] 194.5 63.0 55.5 -90 0
tp @s[tag=sp3] 190.5 63.0 45.5 90 0
tp @s[tag=sp4] 190.5 63.0 55.5 90 0
scoreboard players set @s solo_round 1
scoreboard players set @s solo_timer 45
function mm:game_solo/reset_markers