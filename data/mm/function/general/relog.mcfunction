execute if score $game_live data matches 1.. unless entity @s[tag=in_solo_game] run function mm:general/make_spectator
execute if score $game_live data matches ..0 unless entity @s[tag=in_solo_game] run function mm:general/first_login_setup
scoreboard players reset @s just_left