#doesn't actually place anything
#yeah so this basically just randomizes the pattern, most of the stuff doesn't need to be here but also what if it does for some reason so I'm not removing it
#jk it's useful now
#no it's actually double useful

#don't know what these are for tbh
fill 93 54 99 93 58 103 air
fill 79 54 99 79 58 103 air

execute at @e[type=marker,tag=frame_east] run fill ~ ~ ~ ~ ~4 ~4 barrier
execute at @e[type=marker,tag=frame_west] run fill ~ ~ ~ ~ ~4 ~4 barrier

execute if score $difficulty data matches ..1 run execute store result score $rand data run random value 1..23
execute if score $difficulty data matches 2 run execute store result score $rand data run random value 1..71
execute if score $difficulty data matches 3.. run execute store result score $rand data run random value 24..80

execute if score $diff_scaling data matches 0 run execute store result score $rand data run random value 1..80

#execute if score $custom_patterns data matches 1 store result score $do_custom_pattern_rand data run random value 1..3
#execute if score $custom_patterns data matches 2 run scoreboard players set $do_custom_pattern_rand data 3
#execute if score $custom_patterns data matches 1.. if score $do_custom_pattern_rand data matches 3 run scoreboard players set $rand data 0
#execute if score $custom_patterns data matches 1.. if score $do_custom_pattern_rand data matches 3 run execute as @e[type=marker,tag=cp_enabled,limit=1,sort=random] run execute store result score $custom_pattern_rand data run scoreboard players get @s data
#execute if score $custom_patterns data matches 1.. if score $do_custom_pattern_rand data matches 3 run function mm:game/place_patterns_real_custom

#yes i know i can use storage for this, i didn't want to (it's past me's fault for not separating by difficulty ok)
#this is bad for many reasons actually
#third time revisiting this and it's still just as bad

#easy
execute if score $rand data matches 1 run data modify storage mm:data current_pattern set value "01"
execute if score $rand data matches 2 run data modify storage mm:data current_pattern set value "02"
execute if score $rand data matches 3 run data modify storage mm:data current_pattern set value "03"
execute if score $rand data matches 4 run data modify storage mm:data current_pattern set value "07"
execute if score $rand data matches 5 run data modify storage mm:data current_pattern set value "10"
execute if score $rand data matches 6 run data modify storage mm:data current_pattern set value "15"
execute if score $rand data matches 7 run data modify storage mm:data current_pattern set value "22"
execute if score $rand data matches 8 run data modify storage mm:data current_pattern set value "28"
execute if score $rand data matches 9 run data modify storage mm:data current_pattern set value "32"
execute if score $rand data matches 10 run data modify storage mm:data current_pattern set value "38"
execute if score $rand data matches 11 run data modify storage mm:data current_pattern set value "39"
execute if score $rand data matches 12 run data modify storage mm:data current_pattern set value "41"
execute if score $rand data matches 13 run data modify storage mm:data current_pattern set value "43"
execute if score $rand data matches 14 run data modify storage mm:data current_pattern set value "44"
execute if score $rand data matches 15 run data modify storage mm:data current_pattern set value "52"
execute if score $rand data matches 16 run data modify storage mm:data current_pattern set value "56"
execute if score $rand data matches 17 run data modify storage mm:data current_pattern set value "58"
execute if score $rand data matches 18 run data modify storage mm:data current_pattern set value "61"
execute if score $rand data matches 19 run data modify storage mm:data current_pattern set value "68"
execute if score $rand data matches 20 run data modify storage mm:data current_pattern set value "69"
execute if score $rand data matches 21 run data modify storage mm:data current_pattern set value "72"
execute if score $rand data matches 22 run data modify storage mm:data current_pattern set value "75"
execute if score $rand data matches 23 run data modify storage mm:data current_pattern set value "79"

#medium
execute if score $rand data matches 24 run data modify storage mm:data current_pattern set value "04"
execute if score $rand data matches 25 run data modify storage mm:data current_pattern set value "05"
execute if score $rand data matches 26 run data modify storage mm:data current_pattern set value "06"
execute if score $rand data matches 27 run data modify storage mm:data current_pattern set value "08"
execute if score $rand data matches 28 run data modify storage mm:data current_pattern set value "09"
execute if score $rand data matches 29 run data modify storage mm:data current_pattern set value "11"
execute if score $rand data matches 30 run data modify storage mm:data current_pattern set value "12"
execute if score $rand data matches 31 run data modify storage mm:data current_pattern set value "13"
execute if score $rand data matches 32 run data modify storage mm:data current_pattern set value "16"
execute if score $rand data matches 33 run data modify storage mm:data current_pattern set value "17"
execute if score $rand data matches 34 run data modify storage mm:data current_pattern set value "19"
execute if score $rand data matches 35 run data modify storage mm:data current_pattern set value "20"
execute if score $rand data matches 36 run data modify storage mm:data current_pattern set value "21"
execute if score $rand data matches 37 run data modify storage mm:data current_pattern set value "23"
execute if score $rand data matches 38 run data modify storage mm:data current_pattern set value "26"
execute if score $rand data matches 39 run data modify storage mm:data current_pattern set value "27"
execute if score $rand data matches 40 run data modify storage mm:data current_pattern set value "29"
execute if score $rand data matches 41 run data modify storage mm:data current_pattern set value "31"
execute if score $rand data matches 42 run data modify storage mm:data current_pattern set value "33"
execute if score $rand data matches 43 run data modify storage mm:data current_pattern set value "34"
execute if score $rand data matches 44 run data modify storage mm:data current_pattern set value "35"
execute if score $rand data matches 45 run data modify storage mm:data current_pattern set value "36"
execute if score $rand data matches 46 run data modify storage mm:data current_pattern set value "37"
execute if score $rand data matches 47 run data modify storage mm:data current_pattern set value "40"
execute if score $rand data matches 48 run data modify storage mm:data current_pattern set value "42"
execute if score $rand data matches 49 run data modify storage mm:data current_pattern set value "45"
execute if score $rand data matches 50 run data modify storage mm:data current_pattern set value "46"
execute if score $rand data matches 51 run data modify storage mm:data current_pattern set value "48"
execute if score $rand data matches 52 run data modify storage mm:data current_pattern set value "49"
execute if score $rand data matches 53 run data modify storage mm:data current_pattern set value "50"
execute if score $rand data matches 54 run data modify storage mm:data current_pattern set value "51"
execute if score $rand data matches 55 run data modify storage mm:data current_pattern set value "53"
execute if score $rand data matches 56 run data modify storage mm:data current_pattern set value "54"
execute if score $rand data matches 57 run data modify storage mm:data current_pattern set value "55"
execute if score $rand data matches 58 run data modify storage mm:data current_pattern set value "57"
execute if score $rand data matches 59 run data modify storage mm:data current_pattern set value "59"
execute if score $rand data matches 60 run data modify storage mm:data current_pattern set value "60"
execute if score $rand data matches 61 run data modify storage mm:data current_pattern set value "62"
execute if score $rand data matches 62 run data modify storage mm:data current_pattern set value "65"
execute if score $rand data matches 63 run data modify storage mm:data current_pattern set value "66"
execute if score $rand data matches 64 run data modify storage mm:data current_pattern set value "67"
execute if score $rand data matches 65 run data modify storage mm:data current_pattern set value "70"
execute if score $rand data matches 66 run data modify storage mm:data current_pattern set value "71"
execute if score $rand data matches 67 run data modify storage mm:data current_pattern set value "73"
execute if score $rand data matches 68 run data modify storage mm:data current_pattern set value "74"
execute if score $rand data matches 69 run data modify storage mm:data current_pattern set value "76"
execute if score $rand data matches 70 run data modify storage mm:data current_pattern set value "78"
execute if score $rand data matches 71 run data modify storage mm:data current_pattern set value "80"

#hard
execute if score $rand data matches 72 run data modify storage mm:data current_pattern set value "14"
execute if score $rand data matches 73 run data modify storage mm:data current_pattern set value "18"
execute if score $rand data matches 74 run data modify storage mm:data current_pattern set value "24"
execute if score $rand data matches 75 run data modify storage mm:data current_pattern set value "25"
execute if score $rand data matches 76 run data modify storage mm:data current_pattern set value "30"
execute if score $rand data matches 77 run data modify storage mm:data current_pattern set value "47"
execute if score $rand data matches 78 run data modify storage mm:data current_pattern set value "63"
execute if score $rand data matches 79 run data modify storage mm:data current_pattern set value "64"
execute if score $rand data matches 80 run data modify storage mm:data current_pattern set value "77"