execute unless entity @a[tag=sp1] run function mm:game_solo/start {player_number:1}
execute unless entity @s[tag=sp1] unless entity @a[tag=sp2] run function mm:game_solo/start {player_number:2}
execute unless entity @s[tag=sp1] unless entity @s[tag=sp2] unless entity @a[tag=sp3] run function mm:game_solo/start {player_number:3}
execute unless entity @s[tag=sp1] unless entity @s[tag=sp2] unless entity @s[tag=sp3] unless entity @a[tag=sp4] run function mm:game_solo/start {player_number:4}
function mm:game_solo/update_player_count