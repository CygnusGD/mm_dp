execute if score @s solo_round matches 1 store result score @s solo_rand run random value 1..23
execute if score @s solo_round matches 2..4 store result score @s solo_rand run random value 1..71
execute if score @s solo_round matches 5..7 store result score @s solo_rand run random value 24..71
execute if score @s solo_round matches 8..9 store result score @s solo_rand run random value 24..80
execute if score @s solo_round matches 10.. store result score @s solo_rand run random value 72..80

#easy
execute if score @s solo_rand matches 1 run function mm:game_solo/rounds/prompt {pattern_id:1}
execute if score @s solo_rand matches 2 run function mm:game_solo/rounds/prompt {pattern_id:2}
execute if score @s solo_rand matches 3 run function mm:game_solo/rounds/prompt {pattern_id:3}
execute if score @s solo_rand matches 4 run function mm:game_solo/rounds/prompt {pattern_id:7}
execute if score @s solo_rand matches 5 run function mm:game_solo/rounds/prompt {pattern_id:10}
execute if score @s solo_rand matches 6 run function mm:game_solo/rounds/prompt {pattern_id:15}
execute if score @s solo_rand matches 7 run function mm:game_solo/rounds/prompt {pattern_id:22}
execute if score @s solo_rand matches 8 run function mm:game_solo/rounds/prompt {pattern_id:28}
execute if score @s solo_rand matches 9 run function mm:game_solo/rounds/prompt {pattern_id:32}
execute if score @s solo_rand matches 10 run function mm:game_solo/rounds/prompt {pattern_id:38}
execute if score @s solo_rand matches 11 run function mm:game_solo/rounds/prompt {pattern_id:39}
execute if score @s solo_rand matches 12 run function mm:game_solo/rounds/prompt {pattern_id:41}
execute if score @s solo_rand matches 13 run function mm:game_solo/rounds/prompt {pattern_id:43}
execute if score @s solo_rand matches 14 run function mm:game_solo/rounds/prompt {pattern_id:44}
execute if score @s solo_rand matches 15 run function mm:game_solo/rounds/prompt {pattern_id:52}
execute if score @s solo_rand matches 16 run function mm:game_solo/rounds/prompt {pattern_id:56}
execute if score @s solo_rand matches 17 run function mm:game_solo/rounds/prompt {pattern_id:58}
execute if score @s solo_rand matches 18 run function mm:game_solo/rounds/prompt {pattern_id:61}
execute if score @s solo_rand matches 19 run function mm:game_solo/rounds/prompt {pattern_id:68}
execute if score @s solo_rand matches 20 run function mm:game_solo/rounds/prompt {pattern_id:69}
execute if score @s solo_rand matches 21 run function mm:game_solo/rounds/prompt {pattern_id:72}
execute if score @s solo_rand matches 22 run function mm:game_solo/rounds/prompt {pattern_id:75}
execute if score @s solo_rand matches 23 run function mm:game_solo/rounds/prompt {pattern_id:79}

#medium
execute if score @s solo_rand matches 24 run function mm:game_solo/rounds/prompt {pattern_id:4}
execute if score @s solo_rand matches 25 run function mm:game_solo/rounds/prompt {pattern_id:5}
execute if score @s solo_rand matches 26 run function mm:game_solo/rounds/prompt {pattern_id:6}
execute if score @s solo_rand matches 27 run function mm:game_solo/rounds/prompt {pattern_id:8}
execute if score @s solo_rand matches 28 run function mm:game_solo/rounds/prompt {pattern_id:9}
execute if score @s solo_rand matches 29 run function mm:game_solo/rounds/prompt {pattern_id:11}
execute if score @s solo_rand matches 30 run function mm:game_solo/rounds/prompt {pattern_id:12}
execute if score @s solo_rand matches 31 run function mm:game_solo/rounds/prompt {pattern_id:13}
execute if score @s solo_rand matches 32 run function mm:game_solo/rounds/prompt {pattern_id:16}
execute if score @s solo_rand matches 33 run function mm:game_solo/rounds/prompt {pattern_id:17}
execute if score @s solo_rand matches 34 run function mm:game_solo/rounds/prompt {pattern_id:19}
execute if score @s solo_rand matches 35 run function mm:game_solo/rounds/prompt {pattern_id:20}
execute if score @s solo_rand matches 36 run function mm:game_solo/rounds/prompt {pattern_id:21}
execute if score @s solo_rand matches 37 run function mm:game_solo/rounds/prompt {pattern_id:23}
execute if score @s solo_rand matches 38 run function mm:game_solo/rounds/prompt {pattern_id:26}
execute if score @s solo_rand matches 39 run function mm:game_solo/rounds/prompt {pattern_id:27}
execute if score @s solo_rand matches 40 run function mm:game_solo/rounds/prompt {pattern_id:29}
execute if score @s solo_rand matches 41 run function mm:game_solo/rounds/prompt {pattern_id:31}
execute if score @s solo_rand matches 42 run function mm:game_solo/rounds/prompt {pattern_id:33}
execute if score @s solo_rand matches 43 run function mm:game_solo/rounds/prompt {pattern_id:34}
execute if score @s solo_rand matches 44 run function mm:game_solo/rounds/prompt {pattern_id:35}
execute if score @s solo_rand matches 45 run function mm:game_solo/rounds/prompt {pattern_id:36}
execute if score @s solo_rand matches 46 run function mm:game_solo/rounds/prompt {pattern_id:37}
execute if score @s solo_rand matches 47 run function mm:game_solo/rounds/prompt {pattern_id:40}
execute if score @s solo_rand matches 48 run function mm:game_solo/rounds/prompt {pattern_id:42}
execute if score @s solo_rand matches 49 run function mm:game_solo/rounds/prompt {pattern_id:45}
execute if score @s solo_rand matches 50 run function mm:game_solo/rounds/prompt {pattern_id:46}
execute if score @s solo_rand matches 51 run function mm:game_solo/rounds/prompt {pattern_id:48}
execute if score @s solo_rand matches 52 run function mm:game_solo/rounds/prompt {pattern_id:49}
execute if score @s solo_rand matches 53 run function mm:game_solo/rounds/prompt {pattern_id:50}
execute if score @s solo_rand matches 54 run function mm:game_solo/rounds/prompt {pattern_id:51}
execute if score @s solo_rand matches 55 run function mm:game_solo/rounds/prompt {pattern_id:53}
execute if score @s solo_rand matches 56 run function mm:game_solo/rounds/prompt {pattern_id:54}
execute if score @s solo_rand matches 57 run function mm:game_solo/rounds/prompt {pattern_id:55}
execute if score @s solo_rand matches 58 run function mm:game_solo/rounds/prompt {pattern_id:57}
execute if score @s solo_rand matches 59 run function mm:game_solo/rounds/prompt {pattern_id:59}
execute if score @s solo_rand matches 60 run function mm:game_solo/rounds/prompt {pattern_id:60}
execute if score @s solo_rand matches 61 run function mm:game_solo/rounds/prompt {pattern_id:62}
execute if score @s solo_rand matches 62 run function mm:game_solo/rounds/prompt {pattern_id:65}
execute if score @s solo_rand matches 63 run function mm:game_solo/rounds/prompt {pattern_id:66}
execute if score @s solo_rand matches 64 run function mm:game_solo/rounds/prompt {pattern_id:67}
execute if score @s solo_rand matches 65 run function mm:game_solo/rounds/prompt {pattern_id:70}
execute if score @s solo_rand matches 66 run function mm:game_solo/rounds/prompt {pattern_id:71}
execute if score @s solo_rand matches 67 run function mm:game_solo/rounds/prompt {pattern_id:73}
execute if score @s solo_rand matches 68 run function mm:game_solo/rounds/prompt {pattern_id:74}
execute if score @s solo_rand matches 69 run function mm:game_solo/rounds/prompt {pattern_id:76}
execute if score @s solo_rand matches 70 run function mm:game_solo/rounds/prompt {pattern_id:78}
execute if score @s solo_rand matches 71 run function mm:game_solo/rounds/prompt {pattern_id:80}

#hard
execute if score @s solo_rand matches 72 run function mm:game_solo/rounds/prompt {pattern_id:14}
execute if score @s solo_rand matches 73 run function mm:game_solo/rounds/prompt {pattern_id:18}
execute if score @s solo_rand matches 74 run function mm:game_solo/rounds/prompt {pattern_id:24}
execute if score @s solo_rand matches 75 run function mm:game_solo/rounds/prompt {pattern_id:25}
execute if score @s solo_rand matches 76 run function mm:game_solo/rounds/prompt {pattern_id:30}
execute if score @s solo_rand matches 77 run function mm:game_solo/rounds/prompt {pattern_id:47}
execute if score @s solo_rand matches 78 run function mm:game_solo/rounds/prompt {pattern_id:63}
execute if score @s solo_rand matches 79 run function mm:game_solo/rounds/prompt {pattern_id:64}
execute if score @s solo_rand matches 80 run function mm:game_solo/rounds/prompt {pattern_id:77}