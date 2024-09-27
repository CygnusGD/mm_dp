#run as players who have a personal timer running
scoreboard players add @s personal_timer_ticks 1
execute if score @s personal_timer_ticks matches 1.. run scoreboard players add @s personal_timer_tenths 1
execute if score @s personal_timer_ticks matches 1.. run scoreboard players set @s personal_timer_ticks 0