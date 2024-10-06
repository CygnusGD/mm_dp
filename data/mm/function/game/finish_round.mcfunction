execute as @a[tag=in_standard_game] run tag @s remove personal_timer_active

#set lp-1 to lp
scoreboard players operation $living_players_minus_one data = $living_players data
#subtract 1 from lp to get lp-1
scoreboard players operation $living_players_minus_one data -= $one data
#if everybody finished but one person, end the round and clear the timer
execute if score $finished_players data = $living_players_minus_one data run scoreboard players set $round_live data 0
execute if score $finished_players data = $living_players_minus_one data run schedule clear mm:game/timer

#tell everybody ~~who ~~got eliminated~~ lost a life~~ everything
execute if entity @a[tag=p1,tag=!round_finish] unless entity @a[tag=p1,tag=spectator] if score @a[tag=p1,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p1,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p2,tag=!round_finish] unless entity @a[tag=p2,tag=spectator] if score @a[tag=p2,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p2,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p3,tag=!round_finish] unless entity @a[tag=p3,tag=spectator] if score @a[tag=p3,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p3,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p4,tag=!round_finish] unless entity @a[tag=p4,tag=spectator] if score @a[tag=p4,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p4,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p5,tag=!round_finish] unless entity @a[tag=p5,tag=spectator] if score @a[tag=p5,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p5,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p6,tag=!round_finish] unless entity @a[tag=p6,tag=spectator] if score @a[tag=p6,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p6,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p7,tag=!round_finish] unless entity @a[tag=p7,tag=spectator] if score @a[tag=p7,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p7,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p8,tag=!round_finish] unless entity @a[tag=p8,tag=spectator] if score @a[tag=p8,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p8,tag=!round_finish]","color":"#C41616","bold":true},{"text":" lost a life!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]

execute if entity @a[tag=p1,tag=!round_finish] unless entity @a[tag=p1,tag=spectator] if score @a[tag=p1,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p1,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p2,tag=!round_finish] unless entity @a[tag=p2,tag=spectator] if score @a[tag=p2,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p2,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p3,tag=!round_finish] unless entity @a[tag=p3,tag=spectator] if score @a[tag=p3,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p3,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p4,tag=!round_finish] unless entity @a[tag=p4,tag=spectator] if score @a[tag=p4,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p4,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p5,tag=!round_finish] unless entity @a[tag=p5,tag=spectator] if score @a[tag=p5,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p5,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p6,tag=!round_finish] unless entity @a[tag=p6,tag=spectator] if score @a[tag=p6,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p6,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p7,tag=!round_finish] unless entity @a[tag=p7,tag=spectator] if score @a[tag=p7,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p7,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]
execute if entity @a[tag=p8,tag=!round_finish] unless entity @a[tag=p8,tag=spectator] if score @a[tag=p8,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{"text":"[ ","color":"gray","bold":false},{"selector":"@a[tag=p8,tag=!round_finish]","color":"#C41616","bold":true},{"text":" was eliminated!","color":"white","bold":false},{"text":" ]","color":"gray","bold":false}]

#for some reason this is here
title @a[tag=!in_solo_game] times 0 40 15

#reduce living player count
#scoreboard players remove $living_players data 1

#remove lives from people (don't remove lives visually from people who are about to die cause they shouldn't actually die)
execute as @a[tag=!round_finish,tag=!in_solo_game] unless score @s lives matches ..1 run damage @s 2 generic
execute as @a[tag=!round_finish,tag=!in_solo_game] run scoreboard players remove @s lives 1

#titles n stuff
execute as @a[tag=!in_solo_game] if score $living_players data matches 2.. run title @a[tag=!in_solo_game] title {"text":"Starting Next Round","color":"#007D28"}
execute as @a[tag=!in_solo_game,tag=!spectator] if score $living_players data matches 2.. unless score @s lives matches ..0 run title @s[tag=!round_finish] title {"text":"You lost a life!","color":"#DD2800"}
execute as @a[tag=!in_solo_game,tag=!spectator] if score $living_players data matches 2.. if score @s lives matches ..0 run title @s[tag=!round_finish] title {"text":"You were eliminated!","color":"#DD2800"}
execute as @a[tag=!in_solo_game,tag=!round_finish,tag=!spectator] at @s if score $living_players data matches 2.. run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~

#make people who ran out of lives into a spectator (good actually) (and very jank thing (above???? this is future cygnus) that the entire map hinges on yeah that's a good idea do that)
execute as @a[tag=!in_solo_game] if score @s lives matches ..0 run tag @s remove alive
execute as @a[tag=!in_solo_game] if score @s lives matches ..0 run tag @s add spectator
execute as @a[tag=!in_solo_game,gamemode=!spectator] if score @s lives matches ..0 run scoreboard players remove $living_players data 1
execute as @a[tag=!in_solo_game] if score @s lives matches ..0 run gamemode spectator

#if there is 1 living player, end the game cause somebody won
execute if score $living_players data matches 1 run function mm:game/finish_game

#make people who didn't finish into a spectator (bad actually)
#execute as @a[tag=!round_finish] run tag @s remove alive
#execute as @a[tag=!round_finish] run tag @s add spectator
#execute as @a[tag=!round_finish] run gamemode spectator

#this one's good though
tag @a remove round_finish

#if there are 2 or more living players, start another round
execute if score $living_players data matches 2.. run schedule function mm:game/pre_start_round 3s