scoreboard players set $round_live data 0
execute unless entity @a[tag=round_finish] run function mm:game/time_out/no_players_finished
execute if entity @a[tag=round_finish] run function mm:game/time_out/at_least_one_player_finished