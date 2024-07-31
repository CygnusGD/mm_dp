kill @e[type=marker,tag=frame_east]
kill @e[type=marker,tag=frame_west]
kill @e[type=marker,tag=pattern_check_east]
kill @e[type=marker,tag=pattern_check_west]
summon marker 93.50 65.00 69.50 {Tags:["frame_east","1"]}
summon marker 93.50 65.00 79.50 {Tags:["frame_east","2"]}
summon marker 93.50 65.00 89.50 {Tags:["frame_east","3"]}
summon marker 93.50 65.00 99.50 {Tags:["frame_east","4"]}
summon marker 79.50 65.00 69.50 {Tags:["frame_west","5"]}
summon marker 79.50 65.00 79.50 {Tags:["frame_west","6"]}
summon marker 79.50 65.00 89.50 {Tags:["frame_west","7"]}
summon marker 79.50 65.00 99.50 {Tags:["frame_west","8"]}
summon marker 93.50 54.00 99.50 {Tags:["pattern_check_east"]}
summon marker 79.50 54.00 99.50 {Tags:["pattern_check_west"]}
execute as @e[type=marker,tag=frame_east] at @s run fill ~ ~ ~ ~ ~4 ~4 barrier
execute as @e[type=marker,tag=frame_west] at @s run fill ~ ~ ~ ~ ~4 ~4 barrier