scoreboard players operation $5 solo_leaderboard = $4 solo_leaderboard
data modify storage mm:solo_scoreboard score5 set from storage mm:solo_scoreboard score4
data modify storage mm:solo_scoreboard username5 set from storage mm:solo_scoreboard username4

scoreboard players operation $4 solo_leaderboard = $3 solo_leaderboard
data modify storage mm:solo_scoreboard score4 set from storage mm:solo_scoreboard score3
data modify storage mm:solo_scoreboard username4 set from storage mm:solo_scoreboard username3

scoreboard players operation $3 solo_leaderboard = $2 solo_leaderboard
data modify storage mm:solo_scoreboard score3 set from storage mm:solo_scoreboard score2
data modify storage mm:solo_scoreboard username3 set from storage mm:solo_scoreboard username2

scoreboard players operation $2 solo_leaderboard = $1 solo_leaderboard
data modify storage mm:solo_scoreboard score2 set from storage mm:solo_scoreboard score1
data modify storage mm:solo_scoreboard username2 set from storage mm:solo_scoreboard username1

execute store result storage mm:solo_scoreboard score1 int 1 run scoreboard players get @s solo_round
loot replace block 0 -64 0 container.0 loot mm:my_head
data modify storage mm:solo_scoreboard username1 set from block 0 -64 0 Items[0].components.minecraft:profile.name
scoreboard players operation $1 solo_leaderboard = @s solo_round

scoreboard players set $scoreboard_success data 1