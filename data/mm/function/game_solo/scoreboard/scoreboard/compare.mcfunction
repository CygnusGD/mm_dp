scoreboard players set $scoreboard_success data 0

execute if score @s solo_round > $1 solo_leaderboard run function mm:game_solo/scoreboard/scoreboard/1
execute if score $scoreboard_success data matches 0 if score @s solo_round > $2 solo_leaderboard run function mm:game_solo/scoreboard/scoreboard/2
execute if score $scoreboard_success data matches 0 if score @s solo_round > $3 solo_leaderboard run function mm:game_solo/scoreboard/scoreboard/3
execute if score $scoreboard_success data matches 0 if score @s solo_round > $4 solo_leaderboard run function mm:game_solo/scoreboard/scoreboard/4
execute if score $scoreboard_success data matches 0 if score @s solo_round > $5 solo_leaderboard run function mm:game_solo/scoreboard/scoreboard/5

function mm:game_solo/scoreboard/pre_update