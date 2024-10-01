scoreboard players set $1 solo_leaderboard -1
scoreboard players set $2 solo_leaderboard -1
scoreboard players set $3 solo_leaderboard -1
scoreboard players set $4 solo_leaderboard -1
scoreboard players set $5 solo_leaderboard -1
 data modify storage mm:solo_scoreboard username1 set value ""
 data modify storage mm:solo_scoreboard username2 set value ""
 data modify storage mm:solo_scoreboard username3 set value ""
 data modify storage mm:solo_scoreboard username4 set value ""
 data modify storage mm:solo_scoreboard username5 set value ""
 data modify storage mm:solo_scoreboard score1 set value ""
 data modify storage mm:solo_scoreboard score2 set value ""
 data modify storage mm:solo_scoreboard score3 set value ""
 data modify storage mm:solo_scoreboard score4 set value ""
 data modify storage mm:solo_scoreboard score5 set value ""
 function mm:game_solo/scoreboard/update with storage mm:solo_scoreboard