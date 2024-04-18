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

scoreboard objectives add end_game trigger
scoreboard objectives add cancel_start trigger

function mm:lobby/clear_tags

function mm:game/setup/reset_pattern_markers

schedule clear mm:game/timer

#team init
team add ready
team modify ready prefix "[Ready] "
team modify ready color dark_green

team add spectator
team modify spectator prefix "[Spectator] "
team modify spectator color blue

team leave @a

#lobby signs
function mm:lobby/reset_signs

setblock 0 63 12 spruce_wall_sign[facing=north] replace
setblock 0 63 12 oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}', '{"text":"Timer:","clickEvent":{"action":"run_command","value":"function mm:lobby/change_timer"}}', '[{"score":{"name":"$timer_master","objective":"data"}},{"text":" seconds"}]', '{"text":""}'], has_glowing_text: true, color: "white"}} replace

#gamerules
gamerule doDaylightCycle false
time set noon
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule doFireTick false
gamerule randomTickSpeed 0
gamerule doMobSpawning false