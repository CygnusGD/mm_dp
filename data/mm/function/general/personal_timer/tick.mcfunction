#run as players who have a personal timer running
scoreboard players add @s personal_timer_ticks 1
execute if score @s personal_timer_ticks matches 2.. run scoreboard players add @s personal_timer_tenths 1
execute if score @s personal_timer_ticks matches 2.. run scoreboard players set @s personal_timer_ticks 0
execute if score @s personal_timer_tenths matches 10.. run scoreboard players add @s personal_timer_seconds 1
execute if score @s personal_timer_tenths matches 10.. run scoreboard players set @s personal_timer_tenths 0
execute if score @s personal_timer_ticks matches 0 run scoreboard players set @s personal_timer_hundredths 0
execute if score @s personal_timer_ticks matches 1 run scoreboard players set @s personal_timer_hundredths 5
#title @s actionbar [{"score":{"name":"@s","objective":"personal_timer_seconds"}},".",{"score":{"name":"@s","objective":"personal_timer_tenths"}},{"score":{"name":"@s","objective":"personal_timer_hundredths"}},"s"]