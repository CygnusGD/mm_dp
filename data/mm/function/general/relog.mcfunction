execute if score $game_live data matches 1.. run function mm:general/make_spectator
execute if score $game_live data matches ..0 run function mm:general/first_login_setup
scoreboard players reset @s just_left