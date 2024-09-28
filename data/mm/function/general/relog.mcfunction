execute if score $game_live data matches 1.. unless entity @s[tag=in_solo_game] run function mm:general/make_spectator
execute if score $game_live data matches ..0 unless entity @s[tag=in_solo_game] run function mm:general/first_login_setup
tag @s remove in_standard_game
tag @s remove in_solo_game
tag @s remove p1
tag @s remove p2
tag @s remove p3
tag @s remove p4
tag @s remove p5
tag @s remove p6
tag @s remove p7
tag @s remove p8
tag @s remove alive
scoreboard players reset @s just_left