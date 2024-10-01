execute store result storage mm:solo_scoreboard score5 int 1 run scoreboard players get @s solo_round
loot replace block 0 -64 0 container.0 loot mm:my_head
data modify storage mm:solo_scoreboard username5 set from block 0 -64 0 Items[0].components.minecraft:profile.name
scoreboard players operation $5 solo_leaderboard = @s solo_round

scoreboard players set $scoreboard_success data 1