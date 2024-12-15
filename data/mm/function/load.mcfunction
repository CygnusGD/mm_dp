#scoreboards
scoreboard objectives add rotate_raycast dummy
scoreboard objectives add rotate_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rotate_stop dummy
scoreboard objectives add just_left minecraft.custom:leave_game

scoreboard objectives add data dummy
scoreboard players set $living_players data 0
scoreboard players set $finished_players data 0
scoreboard players set $one data 1
scoreboard players set $timer data 45
scoreboard players set $round_live data 0
scoreboard players set $game_live data 0
scoreboard players set $game_starting data 0
scoreboard players set $timer_master data 45
scoreboard players set $life_count data 3

scoreboard objectives add end_game trigger
scoreboard objectives add cancel_start trigger

scoreboard objectives add lives dummy
scoreboard objectives add health health
scoreboard objectives setdisplay list health

scoreboard objectives add personal_timer_ticks dummy
scoreboard objectives add personal_timer_hundredths dummy
scoreboard objectives add personal_timer_tenths dummy
scoreboard objectives add personal_timer_seconds dummy

scoreboard objectives add solo_timer dummy
scoreboard objectives add solo_round dummy
scoreboard objectives add solo_rand dummy
scoreboard objectives add solo_delay dummy
scoreboard objectives add solo_timer_counter dummy
scoreboard objectives add solo_leaderboard dummy

scoreboard objectives add editing_pattern dummy

scoreboard players set $extra_finishes_bug_fix data 0

function mm:lobby/clear_tags

function mm:game/setup/reset_pattern_markers

function mm:pattern_editor/init

schedule clear mm:game/timer

#team init
team add ready
team modify ready prefix "[Ready] "
team modify ready color dark_green

team add spectator
team modify spectator prefix "[Spectator] "
team modify spectator color blue

team leave @a

team add in_solo_game
team modify in_solo_game prefix "[Solo] "
team modify in_solo_game color red

#lobby signs
function mm:lobby/reset_signs

#gamerules
gamerule doDaylightCycle false
time set noon
gamerule commandBlockOutput false
gamerule logAdminCommands false
#gamerule sendCommandFeedback false
gamerule doFireTick false
gamerule randomTickSpeed 0
gamerule doMobSpawning false

execute if score $life_count data matches 10 as @a run attribute @s minecraft:max_health base set 20
execute if score $life_count data matches 7 as @a run attribute @s minecraft:max_health base set 14
execute if score $life_count data matches 5 as @a run attribute @s minecraft:max_health base set 10
execute if score $life_count data matches 4 as @a run attribute @s minecraft:max_health base set 8
execute if score $life_count data matches 3 as @a run attribute @s minecraft:max_health base set 6
execute if score $life_count data matches 2 as @a run attribute @s minecraft:max_health base set 4
execute if score $life_count data matches 1 as @a run attribute @s minecraft:max_health base set 2

effect give @a minecraft:regeneration 1 255 true