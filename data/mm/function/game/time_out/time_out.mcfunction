scoreboard players set $time_out_has_happened data 1
scoreboard players set $round_live data 0
scoreboard players set $extra_finishes_bug_fix data 1
execute unless entity @a[tag=!in_solo_game,tag=round_finish] run function mm:game/time_out/no_players_finished
execute if entity @a[tag=!in_solo_game,tag=round_finish] run function mm:game/time_out/at_least_one_player_finished