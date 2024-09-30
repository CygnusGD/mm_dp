tag @s remove solo_countdown_go

scoreboard players set @s solo_timer_counter 0
tag @s add in_solo_round

function mm:game_solo/stop_delay
function mm:game_solo/rounds/countdown/go
function mm:general/reset_game_inv

execute if entity @s[tag=sp1] run execute at @e[type=marker,tag=solo_1] run fill ~ ~ ~ ~ ~4 ~4 air
execute if entity @s[tag=sp2] run execute at @e[type=marker,tag=solo_2] run fill ~ ~ ~ ~ ~4 ~4 air
execute if entity @s[tag=sp3] run execute at @e[type=marker,tag=solo_3] run fill ~ ~ ~ ~ ~4 ~4 air
execute if entity @s[tag=sp4] run execute at @e[type=marker,tag=solo_4] run fill ~ ~ ~ ~ ~4 ~4 air

function mm:game_solo/patterns/pick_comparison

function mm:general/personal_timer/reset
tag @s add personal_timer_active